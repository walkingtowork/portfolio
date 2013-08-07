class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :image_url
      t.string :name
      t.text :description
      t.string :url
      t.boolean :is_complete

      t.timestamps
    end
  end
end
