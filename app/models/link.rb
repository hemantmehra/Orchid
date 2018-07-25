class Link < ApplicationRecord
  before_save :clean_tags
  after_save :update_redis_list
  acts_as_votable
  belongs_to :user
  has_many :comments

  private
    def clean_tags
      t = self.tags
      if t.nil?
        t = ""
      end

      t = t.gsub(/[^\w\-]/, " ")
      l = t.split()
      self.tags = l.join(" ")
    end

    def update_redis_list
      $redis.zrem 'link', self.id
      $redis.zadd 'link', -self.created_at.to_i, self.id
    end
end
