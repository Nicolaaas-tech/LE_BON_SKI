class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :content
      t.integer :rate
      t.references :booking, null: false, foreign_key: true

      t.timestamps
    end
  end
end
