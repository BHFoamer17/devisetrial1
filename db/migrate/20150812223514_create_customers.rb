class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.integer :industry_type_id
      t.integer :space_type_id
      t.integer :business_id
      t.string :country
      t.string :zip
      t.string :state
      t.string :city
      t.string :website
      t.string :company
      t.string :last_name
      t.string :first_name

      t.timestamps

    end
  end
end
