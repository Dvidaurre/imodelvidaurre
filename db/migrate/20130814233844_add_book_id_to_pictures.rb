class AddBookIdToPictures < ActiveRecord::Migration
  def change
    add_column :pictures, :book_id, :integer
  end
end
