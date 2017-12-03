class CreatePremiereTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :premiere_tickets do |t|
      t.references :user, foreign_key: true, null: false
      t.references :premiere, foreign_key: true, null: false

      t.timestamps
    end
  end
end
