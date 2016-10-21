class CreatePokemons < ActiveRecord::Migration[5.0]
  def change
    create_table :pokemons do |t|
      t.integer :nat
      t.string :name
      t.integer :hp
      t.integer :atk
      t.integer :def
      t.integer :spA
      t.integer :spD
      t.string :typeI
      t.string :typeII
      t.string :abilityI
      t.string :abilityII
      t.string :hiddenAbility
      t.float :mass
      t.string :color
      t.string :img_url
      t.timestamps
    end
  end
end
