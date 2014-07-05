class CreateIdes < ActiveRecord::Migration
  def change
    create_table :ides do |t|
      t.string :name
      t.string :string
      t.text :description
      t.string :picture
      t.string :string

      t.timestamps
    end
  end
end
