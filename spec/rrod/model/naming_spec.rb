require 'spec_helper'

describe Rrod::Model::Naming do
  describe "model_name" do
    it "is compliant" do
      expect(Beast.model_name).to be_a ActiveModel::Name
    end
  end
end
