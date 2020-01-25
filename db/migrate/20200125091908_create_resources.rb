class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :title, null: false
      t.string :url, null: false
      t.text :description
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
