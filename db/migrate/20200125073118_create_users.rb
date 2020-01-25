class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name, null: false, default: "Anonymous"
      t.boolean :admin, null: false, default: false

      t.timestamps
    end
    add_index :users, :uid
    add_index :users, :admin
  end
end
