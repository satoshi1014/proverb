class AddStoryToWords < ActiveRecord::Migration[6.1]
  def change
    add_column :words, :story, :text
  end
end
