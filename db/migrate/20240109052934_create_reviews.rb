class CreateReviews < ActiveRecord::Migration[7.1]
  def change
    create_table :reviews do |t|
      t.references :appointment, null: true, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.integer :satisfaction
      t.text :reason
      t.integer :cleanliness
      t.text :suggestions

      t.timestamps
    end
  end
end
