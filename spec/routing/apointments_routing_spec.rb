require "rails_helper"

RSpec.describe ApointmentsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/apointments").to route_to("apointments#index")
    end

    it "routes to #new" do
      expect(get: "/apointments/new").to route_to("apointments#new")
    end

    it "routes to #show" do
      expect(get: "/apointments/1").to route_to("apointments#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/apointments/1/edit").to route_to("apointments#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/apointments").to route_to("apointments#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/apointments/1").to route_to("apointments#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/apointments/1").to route_to("apointments#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/apointments/1").to route_to("apointments#destroy", id: "1")
    end
  end
end
