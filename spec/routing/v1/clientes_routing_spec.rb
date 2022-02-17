require "rails_helper"

RSpec.describe V1::ClientesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/v1/clientes").to route_to("v1/clientes#index")
    end

    it "routes to #show" do
      expect(get: "/v1/clientes/1").to route_to("v1/clientes#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/v1/clientes").to route_to("v1/clientes#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/v1/clientes/1").to route_to("v1/clientes#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/v1/clientes/1").to route_to("v1/clientes#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/v1/clientes/1").to route_to("v1/clientes#destroy", id: "1")
    end
  end
end
