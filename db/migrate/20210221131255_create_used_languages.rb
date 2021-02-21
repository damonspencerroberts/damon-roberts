class CreateUsedLanguages < ActiveRecord::Migration[6.1]
  def change
    create_table :used_languages do |t|
      t.references :language, null: false, foreign_key: true
      t.references :project, null: false, foreign_key: true

      t.timestamps
    end
  end
end
