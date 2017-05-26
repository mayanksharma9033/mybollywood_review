class CreateMovies < ActiveRecord::Migration[5.0]
  def change
    create_table :movies do |t|
        t.string :movie_name
    	t.string :movie_length
    	t.string :director_name
    	t.timestamps
    end
  end
end
