class CreatePropImages < ActiveRecord::Migration
  def change
    create_table :prop_images do |t|
      t.string :title
      t.text :body
      t.string :image
      t.references :property, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
