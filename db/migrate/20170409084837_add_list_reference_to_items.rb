class AddListReferenceToItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :items, :list, foreign_key: true
  end
end
