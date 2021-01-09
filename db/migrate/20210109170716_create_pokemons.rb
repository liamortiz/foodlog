class CreatePokemons < ActiveRecord::Migration[6.0]
  def change
    create_table :pokemons do |t|
      t.string :name
      t.string :pokemon_id
      t.string :type1
      t.string :type2

      t.timestamps
    end
  end
end
