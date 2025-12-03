# frozen_string_literal: true

# This migration comes from decidim (originally 20170906091718)
# This file has been modified by `decidim upgrade:migrations` task on 2025-12-03 09:22:16 UTC
class AddExtraToNotifications < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_notifications, :extra, :jsonb
  end
end
