require "spec_helper"

RSpec.describe ContactsController, :type => :routing do
  describe "routing" do

    it "routes to #new" do
      expect(:get => "/contact").to route_to("contacts#new")
    end

    it "routes to #create" do
      expect(:post => "/contact").to route_to("contacts#create")
    end

    it "routes to #thankyou" do
      expect(:get => "/contact/thank-you").to route_to("contacts#thankyou")
    end

  end
end
