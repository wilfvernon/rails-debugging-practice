class CreateFavoriteSpells < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_spells do |t|
      t.belongs_to :wizard, foreign_key: true
      t.belongs_to :spell, foreign_key: true

      t.timestamps
    end
  end
end
