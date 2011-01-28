class AddUserIdToInstructions < ActiveRecord::Migration
  def self.up
    add_column :instructions, :user_id, :string
  end

  def self.down
    remove_column :instructions, :user_id
  end
end
