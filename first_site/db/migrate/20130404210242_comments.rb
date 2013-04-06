class Comments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.column :description, :string

      t.timestamps
    end
  end
end
