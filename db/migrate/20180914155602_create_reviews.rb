class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.references :product, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.string :description
      t.string :rating
      t.string :created_at
      t.string :updated_at

      t.timestamps null: false
    end
  end
end
