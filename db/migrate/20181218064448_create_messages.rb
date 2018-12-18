class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
    	t.integer :user_id, null: false
    	t.integer :chat_id, null: false
    	t.string :body
    	t.timestamps
    end
  end
end
