class CreateLinkedFiles < ActiveRecord::Migration
  def change
    create_table :linked_files do |t|
      t.references :upload, null: false
      t.string :filename, limit: 255, null: false
      t.string :mime_type, limit: 255, null: false
      t.string :file, limit: 255, null: false

      t.timestamps
    end
    add_index :linked_files, :upload_id
  end
end
