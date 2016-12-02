class CreateMovieLists < ActiveRecord::Migration
  def change
    create_table :movie_lists do |t|
      t.string :title
      t.string :directed_by
      t.date :release

      t.timestamps null: false
    end
  end
end
