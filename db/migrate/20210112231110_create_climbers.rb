class CreateClimbers < ActiveRecord::Migration[6.0]
  def change
    create_table :climbers do |t|
      t.string :name
      t.string :hometown
      t.integer :age

      t.timestamps
    end
  end
end
