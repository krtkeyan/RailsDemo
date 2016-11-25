class AddPasswordToPeople < ActiveRecord::Migration
  def change
    add_column :people, :password, :string
  end
end
