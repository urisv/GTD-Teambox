class CreateLists < ActiveRecord::Migration
  def self.up
    create_table :lists do |t|
      t.string :title
      t.text :description
      t.integer :position
      t.integer :created_by
      t.integer :category_id
      t.text :title_textilized
      t.text :description_textilized
      t.references :project

      t.timestamps
    end
  end

  def self.down
    drop_table :lists
  end
end
