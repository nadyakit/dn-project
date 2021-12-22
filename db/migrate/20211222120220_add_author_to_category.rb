class AddAuthorToCategory < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :author, :string
  end
end
