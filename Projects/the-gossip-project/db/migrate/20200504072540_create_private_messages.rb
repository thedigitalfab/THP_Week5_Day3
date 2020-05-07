class CreatePrivateMessages < ActiveRecord::Migration[6.0]
    def change
        create_table :private_messages do |t|
            # Define Private Message's field:
            t.string :content
            # Define Private Message's relations:
            t.belongs_to :sender, index: true
            # N-N relation between 'Private_Messages' and 'Recipients:users'
            
            t.timestamps
        end

        # N-N relation between 'Private_Messages' and 'Recipients:users'
        create_table :private_messages_users do |t|
            t.belongs_to :private_message, index: true
            t.belongs_to :recipients, index: true
        end
    end
end
