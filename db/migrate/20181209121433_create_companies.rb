class CreateCompanies < ActiveRecord::Migration[5.2]
  def change
    create_table :companies do |t|
    	t.string :name, null: false
    	t.string :name_kana, null: false
    	t.integer :tell, null: false
    	t.integer :post_code, null: false
    	t.string :address, null: false
    	t.string :location, null: false
    	t.string :image_id
    	t.string :introduction, null: false
    	t.integer :salary, null: false
    	t.string :condition, null: false
    	t.integer :offering, null: false
    	t.boolean :status, defalt: true, null: false
      	t.timestamps
    end
  end
end
