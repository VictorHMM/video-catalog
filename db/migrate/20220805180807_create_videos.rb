class CreateVideos < ActiveRecord::Migration[6.0]
  def change
    create_table :videos do |t|
      t.string :title
      t.string :url
      t.integer :minAge
      t.references :owner, null: false, foreign_key: true

      t.timestamps
    end
  end
end
