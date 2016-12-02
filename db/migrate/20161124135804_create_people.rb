class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :gender
      t.string :country
      t.boolean :accept

      t.timestamps null: false
    end
   add_column t.string :password
  end
end
