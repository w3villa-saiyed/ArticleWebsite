class CreateTableLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :table_likes do |t|
      t.references :accounts, index: true
      t.references :articles, index: true
      t.timestamps
    end
  end
end
