class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name, null: false, default: ''
      t.text :description, null: false, default: ''
      t.decimal :price, null: false, default: 0.0
      t.string :image, null: false, default: ''
      t.string :type, null: false, default: ''

      t.timestamps null: false
    end
  end
end
