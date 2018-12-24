class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
    	t.integer :company_id
    	t.integer :employee_id
    	t.integer :chat_id, null: false
    	t.string :body
    	t.timestamps
    end
  end
end
