require "spec_helper"

describe Tune do
  it "should have a factory" do
    expect(FactoryGirl.build(:tune)).to be_valid
  end

  context "validations" do
    it { should validate_uniqueness_of(:link) }
    it { should validate_presence_of(:artist) }
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:blog) }
    it { should validate_presence_of(:link) }
  end
end