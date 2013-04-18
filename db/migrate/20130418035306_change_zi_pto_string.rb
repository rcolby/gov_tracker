class ChangeZiPtoString < ActiveRecord::Migration
  def up
    add_column :users, :zip, :string
    remove_column :users, :zip_code, :integer
  end

  def down

  end
end
