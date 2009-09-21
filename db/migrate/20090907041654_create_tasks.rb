class CreateTasks < ActiveRecord::Migration
  def self.up
    create_table :tasks do |t|
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
    drop_table :tasks
  end
end
