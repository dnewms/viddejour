class CreatePromoters < ActiveRecord::Migration
  def self.up
    create_table :promoters do |t|
      t.integer :amount
      t.string :link

      t.timestamps
    end
  end

  def self.down
    drop_table :promoters
  end
end
