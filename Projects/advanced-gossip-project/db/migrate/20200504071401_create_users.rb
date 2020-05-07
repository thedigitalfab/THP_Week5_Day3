class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      # Define User:
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :email
      t.belongs_to :city, index:true
      
      t.timestamps
    end
  end
end
