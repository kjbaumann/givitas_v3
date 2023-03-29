class CreateOrganizations < ActiveRecord::Migration[7.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.text :description
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
