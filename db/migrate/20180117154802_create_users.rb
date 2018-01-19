class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :tel
      t.string :add
      t.string :image
      t.string :password

      t.timestamps
    end
  end
end
