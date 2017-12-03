class CreateRentItems < ActiveRecord::Migration[5.1]
  def change
    create_table :rent_items do |t|
      t.references :movie, foreign_key: true
      t.references :renter_user, foreign_key: true, class: :user
      t.date :return_date, null: false

      t.timestamps
    end
  end
end
