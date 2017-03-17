class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :firstName
      t.string :lastName
      t.string :email
      t.boolean :admin
      t.datetime :updated_at
      t.datetime :created_at

      t.timestamps
    end
  end
end
