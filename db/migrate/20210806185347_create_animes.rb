class CreateAnimes < ActiveRecord::Migration[6.1]
  def change
    create_table :animes do |t|
      t.string :name
      t.string :img_url
      t.text :description
      t.string :author

      t.timestamps
    end
  end
end
