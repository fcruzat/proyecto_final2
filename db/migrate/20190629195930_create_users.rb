class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :lastname
      t.string :lastname2
      t.boolean :gender, default: false
      t.integer :rut
      t.string :rut_photo
      t.string :photo
      t.string :country
      t.string :city
      t.integer :born
      t.text :description
      t.boolean :approbated, default: false

      t.timestamps
    end
  end
end
