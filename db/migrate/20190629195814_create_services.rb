class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.string :name
      t.string :category
      t.text :description
      t.boolean :home, default: false
      t.string :photos

      t.timestamps
    end
  end
end
