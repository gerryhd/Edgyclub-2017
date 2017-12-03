class CreatePremieres < ActiveRecord::Migration[5.1]
  def change
    create_table :premieres do |t|
      t.string :title
      t.text :description
      t.date :prem_date

      t.timestamps
    end
  end
end
