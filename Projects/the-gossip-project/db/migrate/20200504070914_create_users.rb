class CreateUsers < ActiveRecord::Migration[6.0]
    def change
        create_table :users do |t|
            # Define User's field:
            t.string :first_name
            t.string :last_name
            t.text :description
            t.string :email
            t.integer :age
            # Define User's relations:
            t.belongs_to :city, index:true
            
            t.timestamps
        end
    end
end
