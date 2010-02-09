class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string :name
      t.string :short_name
      t.timestamps
    end
    
    create_table :participants, :force => true do |t|
      t.integer :event_id
      t.integer :user_id
      t.string :role
      t.timestamps
    end
  end

  def self.down
    drop_table :event_participant
    drop_table :events
  end
end
