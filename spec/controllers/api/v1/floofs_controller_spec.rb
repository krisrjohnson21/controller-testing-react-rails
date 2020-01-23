require "rails_helper"

RSpec.describe Api::V1::FloofsController, type: :controller do
  first_floof = Floof.create(
    name: "Trogdor The Burninator",
    floofiness: 1,
    image: "https://lh5.googleusercontent.com/proxy/X3_Io8z31Fim6hdOC47CIAOM4iBAAJQ5XKa9jw14gwbgqdVjA-lc-dzyxKdkqWsn52jtOIkFc8fIAMz67e7NfUfiKF7VR30uZ--sFoHxvG8tt1upS23ecWnZZ2Y"
  )

  describe "GET#show" do
    it "should return the floof and their floofiness" do
      get :show, params: {id: first_floof.id}
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")
      expect(returned_json["floof"]["name"]).to eq "Trogdor The Burninator"
      expect(returned_json["floof"]["floofiness"]).to eq 1
    end
  end
end
