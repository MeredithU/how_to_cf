class DropSteps < ActiveRecord::Migration
  def up
    drop_table :steps
  end

  def down
    create_table :steps do |t|
      t.string "todo"

      t.timestamps
    end
  end
end
