class CreateTags < ActiveRecord::Migration[6.0]
    def change
        create_table :tags do |t|
            # Define Tag's field:
            t.string :name
            # Define Tag's relations:
            # N-N relation between 'Tags' and 'Gossips'

            t.timestamps
        end

        # N-N relation between 'Tags' and 'Gossips'
        create_table :gossips_tags do |t|
            t.belongs_to :gossips
            t.belongs_to :tags
        end
    end
end
