class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title, null: false
      t.text :description
      t.datetime :release_date
      t.string :slug, null: false
      t.string :image
      t.boolean :available, default: true

      t.timestamps
    end
  end
end
