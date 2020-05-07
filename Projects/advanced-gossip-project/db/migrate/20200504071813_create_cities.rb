class CreateCities < ActiveRecord::Migration[6.0]
  def change
    create_table :cities do |t|
      # Define a City
      t.string :name
      t.string :zip_code
      
      t.timestamps
    end
  end
end
