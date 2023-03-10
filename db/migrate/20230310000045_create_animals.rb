class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :species
      t.integer :age
      t.string :image_url
      t.text :description
      t.boolean :adoptable

      t.timestamps
    end
  end
end
