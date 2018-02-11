class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :UserName, null: false
      t.string :hashed_password
      t.date :create_date, null: false
      t.date :update_date, null: false
      t.boolean :deleteFlag, null: false, default: false
      t.timestamps
    end

    
  end
end
