class CreateContacts < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.column :name, :string
      t.column :description, :string

      t.timestamps
    end
  end
end
