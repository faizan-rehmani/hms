class AddColumnToStaff < ActiveRecord::Migration[7.1]
  def change
    remove_column :staffs, :shift, :string
    add_column :staffs, :shift, :integer
    add_column :staffs, :post, :string
  end
end
