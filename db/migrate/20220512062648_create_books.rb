class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.text :description
      t.string :genre
      t.string :isbn
      t.string :publisher
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
