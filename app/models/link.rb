class Link < ApplicationRecord
  before_save :clean_tags
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
end
