class CreatePremiereTickets < ActiveRecord::Migration[5.1]
  def change
    create_table :premiere_tickets do |t|
      t.references :user
      t.references :movie

      t.timestamps
    end
  end
end
