require 'spec_helper'

describe "using Rrod::Model in a form" do

  it "can be passed to form_for" do
    visit new_beast_path
    expect(page).to have_selector('form#new_beast')
  end

  describe "new" do
    it "will route to create" do
      visit new_beast_path
      expect(page).to have_selector("form[action='#{beasts_path}']")
    end
  end

  describe "persisted" do
    let(:beast) { Beast.new(id: 'chimera', name: 'Chimera').tap(&:save) }

    it "will route to update" do
      visit edit_beast_path(beast)
      expect(page).to have_selector("form[action='#{beast_path(beast)}']")
    end
  end

  describe "schemaless" do
    it "will allow any attribute to be displayed on the form" do
      pending
      visit new_vehicle_path
      expect(page).to have_selector('form')
    end
  end

end
