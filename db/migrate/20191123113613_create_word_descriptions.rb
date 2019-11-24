class CreateWordDescriptions < ActiveRecord::Migration[5.2]
  def change
    create_table :word_descriptions do |t|
	t.string :word
	t.text :description
      t.timestamps
    end
  end
end
