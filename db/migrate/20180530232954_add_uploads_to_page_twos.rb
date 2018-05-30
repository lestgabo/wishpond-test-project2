class AddUploadsToPageTwos < ActiveRecord::Migration[5.2]
  def change
    add_column :page_twos, :images, :string
    add_index :page_twos, :images
  end
end
