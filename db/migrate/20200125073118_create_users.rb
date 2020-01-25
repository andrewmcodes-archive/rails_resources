class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name, null: false, default: "Anonymous"
      t.string :role, null: false, default: "member"

      t.timestamps
    end
    add_index :users, :uid
  end
end
