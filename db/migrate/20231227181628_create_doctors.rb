class CreateDoctors < ActiveRecord::Migration[7.1]
  def change
    create_table :doctors do |t|
      t.string :specialization
      t.string :qualification
      t.integer :work_experience

      t.timestamps
    end
  end
end
