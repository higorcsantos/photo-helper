class Photographers < ActiveRecord::Migration[7.1]
  def change
    create_table :photographers, id: false do |t|
      t.string :id, primary_key: true
      t.string :name
      t.string :email
      t.string :password
      t.text :description

      t.timestamps
    end
    
  end
end
