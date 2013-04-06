class Votes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.column :vote, :string
      t.column :user_id, :string
      t.column :value, :string

      t.timestamps
      end
    end
  end
