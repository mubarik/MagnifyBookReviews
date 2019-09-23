class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.string :reviewer
      t.integer :rating
      t.text :body
      t.references :book, foreign_key: true

      t.timestamps
    end
  end
end
