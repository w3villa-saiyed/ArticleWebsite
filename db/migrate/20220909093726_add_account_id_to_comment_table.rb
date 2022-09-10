class AddAccountIdToCommentTable < ActiveRecord::Migration[7.0]
  def change
    add_column :comments , :account_id, :integer
  end
end
 