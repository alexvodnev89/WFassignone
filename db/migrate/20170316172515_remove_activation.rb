class RemoveActivation < ActiveRecord::Migration
  def change
    remove_column :users, :activated
    remove_column :users, :activation_digest
  end
end
