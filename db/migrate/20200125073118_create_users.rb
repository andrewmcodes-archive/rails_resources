class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name, null: false, default: "Anonymous"
      t.integer :role, null: false, default: 1

      t.timestamps
    end
    add_index :users, :uid
    add_index :users, :role
  end
end
