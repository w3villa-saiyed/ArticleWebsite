class ChangeTableLikesToLikes < ActiveRecord::Migration[7.0]
  def change
    rename_table :table_likes, :likes
  end
end
