class CreateComments < ActiveRecord::Migration[6.0]
    def change
        create_table :comments do |t|
            # Define Comment' field:
            t.text :content
            t.integer :commentable_id
            t.string :commentable_type
            # Define Comment's relations:
            t.belongs_to :user, index: true
            
            t.timestamps
        end
    end
end
