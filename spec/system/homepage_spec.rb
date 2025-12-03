# frozen_string_literal: true

require "rails_helper"

describe "Homepage" do
  let!(:organization) { create(:organization, default_locale: "en", available_locales: %w(en eu es)) }

  before do
    switch_to_host(organization.host)
    visit decidim.root_path
  end

  it "includes the platform name in the footer" do
    expect(page).to have_content("Decidim")
  end

  context "when header" do
    it "includes additional language chooser" do
      within ".main-bar__links-desktop" do
        expect(page).to have_css(".main-header__language-container")
      end
    end
  end
end
