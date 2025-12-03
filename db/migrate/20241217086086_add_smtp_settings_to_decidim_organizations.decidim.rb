# frozen_string_literal: true

# This migration comes from decidim (originally 20181219130325)
# This file has been modified by `decidim upgrade:migrations` task on 2025-12-03 09:22:16 UTC
class AddSmtpSettingsToDecidimOrganizations < ActiveRecord::Migration[5.2]
  def change
    add_column :decidim_organizations, :smtp_settings, :jsonb
  end
end
