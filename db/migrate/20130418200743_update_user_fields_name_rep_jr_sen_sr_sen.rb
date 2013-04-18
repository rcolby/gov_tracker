class UpdateUserFieldsNameRepJrSenSrSen < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :rep, :string
    add_column :users, :jr_sen, :string
    add_column :users, :sr_sen, :string

    remove_column :users, :f_name, :string
    remove_column :users, :l_name, :string
  end
end
