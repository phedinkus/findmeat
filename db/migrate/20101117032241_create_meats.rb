class CreateMeats < ActiveRecord::Migration
  def self.up
    create_table :meats do |t|
      t.string :animal
      t.string :kind

      t.timestamps
    end
  end

  def self.down
    drop_table :meats
  end
end
