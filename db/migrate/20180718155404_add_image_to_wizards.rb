class AddImageToWizards < ActiveRecord::Migration[5.2]
  def change
    add_column :wizards, :image, :string
  end
end
