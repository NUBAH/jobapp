class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|

    	t.string :name, null: false
    	t.string :name_kana, null: false
    	t.string :introduction
    	t.integer :tell
    	t.date :birthday, null: false
    	t.timestamps
    end
  end
end
