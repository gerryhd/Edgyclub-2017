class AddRentTimeLeftToRents < ActiveRecord::Migration[5.1]
  def change
    add_column :rent_items, :return_date, :date
  end
end
