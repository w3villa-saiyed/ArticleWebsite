class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.belongs_to :account_id, null: false, foreign_key: true
      t.belongs_to :article_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
