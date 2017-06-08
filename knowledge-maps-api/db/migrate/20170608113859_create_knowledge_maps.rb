class CreateKnowledgeMaps < ActiveRecord::Migration[5.1]
  def change
    create_table :knowledge_maps do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
