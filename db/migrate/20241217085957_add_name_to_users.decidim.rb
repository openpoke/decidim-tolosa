# frozen_string_literal: true

# This migration comes from decidim (originally 20161010085443)
# This file has been modified by `decidim upgrade:migrations` task on 2025-12-03 09:22:16 UTC
class AddNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :decidim_users, :name, :string, null: false
  end
end
