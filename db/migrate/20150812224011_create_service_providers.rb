class CreateServiceProviders < ActiveRecord::Migration
  def change
    create_table :service_providers do |t|
      t.string :company_name
      t.text :description

      t.timestamps

    end
  end
end
