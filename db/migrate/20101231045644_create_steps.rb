class CreateSteps < ActiveRecord::Migration
  def self.up
    create_table :steps do |t|
      t.belongs_to :instruction
      t.text :description
      t.integer :position
      t.timestamps
    end
  end

  def self.down
    drop_table :steps
  end
end
