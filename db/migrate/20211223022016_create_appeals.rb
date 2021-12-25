class CreateAppeals < ActiveRecord::Migration[6.1]
  def change
    create_table :appeals do |t|
      t.string :author
      t.string :email
      t.text :content
      t.datetime :data

      t.timestamps
    end
  end
end
