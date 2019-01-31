class CreateIncomments < ActiveRecord::Migration[5.2]
  def change
    create_table :incomments do |t|
    	t.text :content
    	t.references :user, foreign_key: true
      t.references :comment, foreign_key: true
      t.timestamps
    end
  end
end
