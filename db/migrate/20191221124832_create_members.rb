class CreateMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :members do |t|
    	t.string :name
    	t.date :joining_date
    	t.float :average_score,default: 0
    	t.string :phone_number
    end
  end
end
