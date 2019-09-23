class CreateWizards < ActiveRecord::Migration[5.2]
  def change
    create_table :wizards do |t|
      t.string :name
      t.string :house
      t.integer :age
      t.string :image
      t.timestamps
    end
  end
end
