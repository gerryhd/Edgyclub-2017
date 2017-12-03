class AddIndexToPremieresSlug < ActiveRecord::Migration[5.1]
  def change
    add_index :premieres, :slug, unique: true
  end
end
