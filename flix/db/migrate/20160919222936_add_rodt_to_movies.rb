class AddRodtToMovies < ActiveRecord::Migration[5.0]
  def change
    add_column :movies, :released_on_dt, :datetime
  end
end
