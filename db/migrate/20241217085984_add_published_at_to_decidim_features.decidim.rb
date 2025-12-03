# frozen_string_literal: true

# This migration comes from decidim (originally 20170206142116)
# This file has been modified by `decidim upgrade:migrations` task on 2025-12-03 09:22:16 UTC
class AddPublishedAtToDecidimFeatures < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_features, :published_at, :datetime
    execute "UPDATE decidim_features SET published_at=#{quote(Time.current)}"
  end
end
