class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      t.string :topic

      t.timestamps
    end
  end
end
