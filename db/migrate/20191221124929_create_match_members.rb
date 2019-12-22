class CreateMatchMembers < ActiveRecord::Migration[5.2]
  def change
    create_table :match_members do |t|
			t.references :match
			t.references :member
			t.float :score
			t.integer :result
    end
  end
end
