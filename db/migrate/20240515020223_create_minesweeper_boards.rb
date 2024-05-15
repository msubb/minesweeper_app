class CreateMinesweeperBoards < ActiveRecord::Migration[7.1]
  def change
    create_table :minesweeper_boards do |t|
      t.string :name
      t.string :email
      t.integer :width
      t.integer :height
      t.integer :mines
      t.text :board

      t.timestamps
    end
  end
end
