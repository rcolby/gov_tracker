class AddToUserTable < ActiveRecord::Migration
  def change
    add_column :users, :zip_code, :integer
    add_column :users, :f_name, :string
    add_column :users, :l_name, :string
  end

end
