require 'spec_helper'

describe Rrod::Model::Conversion do
  it "includes ActiveModel::Conversion into Rrod::Model" do
    expect(Beast.ancestors).to include ActiveModel::Conversion
  end
end
