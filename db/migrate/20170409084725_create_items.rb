class CreateItems < ActiveRecord::Migration[5.0]
  def change
    create_table :items do |t|
      t.string :task
      t.boolean :completed

      t.timestamps
    end
  end
end
