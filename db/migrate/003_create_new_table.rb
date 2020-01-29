class CreateNewTable < ActiveRecord::Migration

  def up
    create_table :school_classes do |t|
      t.string :title
      t.integer :room_number
	  t.timestamps null: false
    end

  end	

  def down
  	drop_table :school_class
  end
end