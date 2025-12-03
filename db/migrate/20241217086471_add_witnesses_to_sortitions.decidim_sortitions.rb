# frozen_string_literal:  true

# This migration comes from decidim_sortitions (originally 20171220164658)
# This file has been modified by `decidim upgrade:migrations` task on 2025-12-03 09:22:16 UTC
class AddWitnessesToSortitions < ActiveRecord::Migration[5.1]
  def change
    add_column :decidim_module_sortitions_sortitions, :witnesses, :jsonb
  end
end
