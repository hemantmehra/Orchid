class AddTagsToLinks < ActiveRecord::Migration[5.2]
  def change
    add_column :links, :tags, :text
  end
end
