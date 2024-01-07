class CreateDiseases < ActiveRecord::Migration[7.1]
  def change
    create_table :diseases do |t|
      t.string :name
      t.text :description
      t.string :symptom
      t.string :cause
      t.references :specialization, null: false, foreign_key: true

      t.timestamps
    end
  end
end
