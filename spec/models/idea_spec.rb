require "rails_helper"
RSpec.describe Idea, :type => :model do
    it "has a name" do
        test_name="low"
      idea=Idea.create(name: test_name)
      expect(idea.name).to eq(test_name.reverse)
    end
  end