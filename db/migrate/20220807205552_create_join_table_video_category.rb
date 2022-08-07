class CreateJoinTableVideoCategory < ActiveRecord::Migration[6.0]
  def change
    create_join_table :videos, :categories do |t|
      t.index [:video_id, :category_id]
    end
  end
end
