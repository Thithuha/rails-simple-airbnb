class AddRatingToFlats < ActiveRecord::Migration[6.1]
  def change
    add_column :flats, :rating, :integer
  end
end
