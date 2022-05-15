class RemoveColumnIndex < ActiveRecord::Migration[6.1]
  def change
    remove_index :customers, :email
  end
end
