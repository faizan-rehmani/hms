class CreatePrograms < ActiveRecord::Migration[7.1]
  def change
    create_table :programs do |t|
      t.string :title
      t.string :description
      t.references :specialization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
