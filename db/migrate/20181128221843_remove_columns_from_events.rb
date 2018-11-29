class RemoveColumnsFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :poster_file_name, :string
    remove_column :events, :poster_content_type, :string
    remove_column :events, :poster_file_size, :string
    remove_column :events, :poster_updated_at, :string
    remove_column :events, :picture_file_name, :string
    remove_column :events, :picture_content_type, :string
    remove_column :events, :picture_file_size, :string
    remove_column :events, :picture_updated_at, :string
  end
end
