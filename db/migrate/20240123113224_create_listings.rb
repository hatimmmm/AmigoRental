class CreateListings < ActiveRecord::Migration[7.1]
  def change
    create_table :listings do |t|
      t.string :title
      t.string :content
      t.string :image_url
<<<<<<< HEAD
=======
      t.integer :price
>>>>>>> 56a960c4cd5851fa781bc1a0378c8d4be5a18125
      t.boolean :availability, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
