class CreateEmployees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|

    	t.string :introduction
    	t.date :birthday, null: false
    	t.timestamps
    end
  end
end
