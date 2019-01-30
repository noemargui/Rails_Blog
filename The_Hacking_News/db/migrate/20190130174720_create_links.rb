class CreateLinks < ActiveRecord::Migration[5.2]
  def change
    create_table :links do |t|
    	t.string :content
    	t.belongs_to :user, index: true
      t.timestamps
    end
  end
end
