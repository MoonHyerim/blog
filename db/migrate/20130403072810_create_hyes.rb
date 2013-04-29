class CreateHyes < ActiveRecord::Migration
  def change
    create_table :hyes do |t|
      t.string :name

      t.timestamps
    end
  end
end
