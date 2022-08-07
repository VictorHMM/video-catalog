require_relative "20220805180933_create_video_categories"
class FixCreateVideoCategories < ActiveRecord::Migration[6.0]
  def change
    revert CreateVideoCategories
  end
end
