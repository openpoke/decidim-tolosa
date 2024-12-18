# frozen_string_literal: true

require "rails_helper"

describe "Homepage" do
  let!(:organization) { create(:organization) }

  before do
    switch_to_host(organization.host)
    visit decidim.root_path
  end

  it "includes the platform name in the footer" do
    expect(page).to have_content("Decidim")
  end
end
