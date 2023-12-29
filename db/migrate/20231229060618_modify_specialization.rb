class ModifySpecialization < ActiveRecord::Migration[7.1]
  def change
    remove_column :doctors, :specialization, :string
    add_reference :doctors, :specialization, null: false, foreign_key: true
  end
end
