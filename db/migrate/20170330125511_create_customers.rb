class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name, null: false, default: ''
      t.string :last_name, null: false, default: ''
      t.string :phone, null: false, default: ''
      t.text :address, null: false, default: ''

      t.timestamps null: false
    end
  end
end
