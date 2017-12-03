class CreatePremieres < ActiveRecord::Migration[5.1]
  def change
    create_table :premieres do |t|
      t.string :title, null: false
      t.text :description
      t.date :prem_date, null: false
      t.string :slug, null: false
      
      t.timestamps
    end
  end
end
