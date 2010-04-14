class CreateNextTasks < ActiveRecord::Migration
  def self.up
    create_table :next_tasks do |t|
      t.text :description
      t.integer :cost
      t.string :cost_type
      t.integer :position
      t.text :description_textilized
      t.references :list

      t.timestamps
    end
  end

  def self.down
    drop_table :next_tasks
  end
end
