class AddSortedCharsToWords < ActiveRecord::Migration
  def change
    add_column :words, :sorted_chars, :string
  end
end
