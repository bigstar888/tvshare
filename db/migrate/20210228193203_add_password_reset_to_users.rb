class AddPasswordResetToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :password_reset_token, :string
    add_column :users, :password_reset_token_expiration, :datetime

    add_index :users, :password_reset_token
  end
end
