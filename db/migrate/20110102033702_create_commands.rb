class CreateCommands < ActiveRecord::Migration
  def self.up
    create_table :commands do |t|
      t.belongs_to :step
      t.text :body
      t.integer :position

      t.timestamps
    end
    add_index :commands, :step_id
  end

  def self.down
    remove_index :commands, :step_id
    drop_table :commands
  end
end
