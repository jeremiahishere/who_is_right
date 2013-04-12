class People < ActiveRecord::Migration
  def up
    create_table :people do |t|
      t.string :name
      t.text :description
      t.string :image_name
    end

    create_table :votes do |t|
      t.integer :person_id
      t.integer :weight, :default => 1
      t.string :ip_address
    end
  end

  def down
    drop_table :people
    drop_table :votes
  end
end
