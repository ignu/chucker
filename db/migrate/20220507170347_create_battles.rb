class CreateBattles < ActiveRecord::Migration[7.0]
  def change
    create_table :battles do |t|
      t.string :name
      t.integer :initiative

      t.timestamps
    end
  end
end
