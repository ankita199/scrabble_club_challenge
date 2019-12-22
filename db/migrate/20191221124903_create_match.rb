class CreateMatch < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
			t.string :title
			t.date :held
			t.string :location
    end
  end
end
