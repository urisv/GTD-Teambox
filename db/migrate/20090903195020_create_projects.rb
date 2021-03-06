class CreateProjects < ActiveRecord::Migration
  def self.up
    create_table :projects do |t|
      t.string :name
      t.string :url
      t.string :logo_file_name
      t.string :logo_content_type
      t.integer :logo_file_size
      t.boolean :processed

      t.timestamps
    end
  end

  def self.down
    drop_table :projects
  end
end
