class CreateFthreads < ActiveRecord::Migration
  def self.up
    create_table :fthreads do |t|
      t.string :title
      t.references :subforum

      t.timestamps
    end
  end

  def self.down
    drop_table :fthreads
  end
end
