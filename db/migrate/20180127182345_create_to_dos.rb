class CreateToDos < ActiveRecord::Migration[5.1]
  def change
    create_table :to_dos do |t|
      t.string :name
      t.text :desc
      t.date :due

      t.timestamps
    end
  end
end
