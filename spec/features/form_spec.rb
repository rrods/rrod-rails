require 'spec_helper'

describe "using Rrod::Model in a form" do

  it "can be passed to form_for" do
    visit "/beasts/new"
    expect(page).to have_selector('form#new_beast')
  end

  describe "new" do
    it "will route to create"
  end

  describe "persisted" do
    it "will route to update"
  end

  describe "schemaless" do
    it "will allow any attribute to be displayed on the form"
  end

end
