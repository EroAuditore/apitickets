require "rails_helper"

RSpec.describe V1::AgentesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/v1/agentes").to route_to("v1/agentes#index")
    end

    it "routes to #show" do
      expect(get: "/v1/agentes/1").to route_to("v1/agentes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/v1/agentes").to route_to("v1/agentes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/v1/agentes/1").to route_to("v1/agentes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/v1/agentes/1").to route_to("v1/agentes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/v1/agentes/1").to route_to("v1/agentes#destroy", id: "1")
    end
  end
end
