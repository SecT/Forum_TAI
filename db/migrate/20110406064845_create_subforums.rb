class CreateSubforums < ActiveRecord::Migration
  def self.up
    create_table :subforums do |t|
      t.string :name
      t.text :desc

      t.timestamps
    end
  end

  def self.down
    drop_table :subforums
  end
end
