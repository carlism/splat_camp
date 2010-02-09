class CreateOccurences < ActiveRecord::Migration
  def self.up
    create_table :occurences do |t|
      t.integer :event_id
      t.date :date
      t.string :location

      t.timestamps
    end
  end

  def self.down
    drop_table :occurences
  end
end
