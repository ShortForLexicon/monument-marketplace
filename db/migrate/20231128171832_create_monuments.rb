class CreateMonuments < ActiveRecord::Migration[7.1]
  def change
    create_table :monuments do |t|
      t.string :name
      t.string :description
      t.string :location
      t.integer :price

      t.timestamps
    end
  end
end
