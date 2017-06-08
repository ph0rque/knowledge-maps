class CreateTopics < ActiveRecord::Migration[5.1]
  def change
    create_table :topics do |t|
      t.string :name
      t.string :classification
      t.references :knowledge_map, foreign_key: true
      t.references :topic, foreign_key: true

      t.timestamps
    end
  end
end
