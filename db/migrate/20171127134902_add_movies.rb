class AddMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.column :name, :string
      t.column :release, :integer
      t.column :description, :string

      t.timestamps
    end  
  end
end
