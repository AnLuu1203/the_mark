class CreateSpecifications < ActiveRecord::Migration
  def change
    create_table :specifications do |t|
      t.string :ram, null: false, default: ''
      t.string :cpu, null: false, default: ''
      t.string :screen, null: false, default: ''
      t.string :operating_system, null: false, default: ''
      t.string :front_camera, null: false, default: ''
      t.string :back_camera, null: false, default: ''
      t.integer :product_id

      t.timestamps null: false
    end

    add_index :specifications, :product_id
    add_index :specifications, :operating_system
    add_foreign_key :specifications, :products, column: :product_id, on_delete: :cascade
  end
end
