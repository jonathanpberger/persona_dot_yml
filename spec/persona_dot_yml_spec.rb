require 'spec_helper'

class PersonaDotYMLExample
  include PersonaDotYML
end

describe PersonaDotYMLExample do
  let(:subject) { PersonaDotYMLExample.new }

  describe "Feature tests" do
    let(:group) { double(:rspec_example_group, run: true) }
    context "when there is a user specified" do
      before { As "Sam the Seller" }

      it "should pass" do
        expect { group.run }.to_not raise_exception
      end
    end

    context "when there is no user specified" do
      before { }

      it "should fail" do
        expect { group.run }.to raise_exception
      end


    end
  end

  # describe "ways I assert user ID" do
    # it "should understand when" do

    # end
  # end

  # ---

  # describe "#given, #when, #then, #and, #also, #but" do
    # ["given", "when", "then", "and", "Given", "When", "Then", "And", "Also", "also", "But", "but"].each do |method|
      # it "calls the method after translating the string" do
        # subject.should_receive(:something)
        # subject.send(method, "something")
      # end
    # end
  # end

  # describe "#methodize" do
    # it "removes special chars" do
      # subject.send(:methodize, "bond, james bond").should == "bond_james_bond"
    # end

    # it "converts to lower case" do
      # subject.send(:methodize, "HELLO WORLD").should == "hello_world"
    # end

    # it "compacts adjacent separators" do
      # subject.send(:methodize, "Bates & Lolcat Realty").should == "bates_lolcat_realty"
      # subject.send(:methodize, "Ruby / Python / Scala, same deal").should == "ruby_python_scala_same_deal"
    # end

    # it "underscores slashes" do
      # subject.send(:methodize, "Chocolate/Vanilla Cake").should == "chocolate_vanilla_cake"
    # end
  # end

  # ["behavior", "behaviour", "by", "and_by", "it_also", "behaves_like"].each do |method|
    # describe "##{method}" do
      # it 'calls the block' do
        # called = false
        # subject.send(method, "an unused parameter") do
          # called = true
        # end

        # expect(called).to be_true
      # end
    # end
  # end

end
