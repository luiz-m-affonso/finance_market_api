class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :email, null: false
      t.string :password_digest, unique: true
      t.index :email, unique: true
      t.references :account, null: false, foreign_key: true
      
      t.timestamps
    end
  end
end
