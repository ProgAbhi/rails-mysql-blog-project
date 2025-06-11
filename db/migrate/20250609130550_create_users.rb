class CreateUsers < ActiveRecord::Migration[7.1]  # use your correct version if different
  def change
    create_table :users do |t|
      ## Devise fields
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Optional fields for recoverable, rememberable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at
      t.datetime :remember_created_at

      ## Add custom fields
      t.string :name

      t.timestamps null: false
    end

    add_index :users, :email,                unique: true
    add_index :users, :reset_password_token, unique: true
  end
end
