class CreateGossips < ActiveRecord::Migration[6.0]
    def change
        create_table :gossips do |t|
            # Define Gossip's Field:
            t.string :title
            t.string :content
            #Define Gossip's relations:
            t.belongs_to :user

            t.timestamps
        end
    end
end
