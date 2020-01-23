RSpec.describe Api::V1::PostsController, type: :controller do
  let!(:new_floof) { Floof.create(
    name: "Trogdor The Burninator",
    floofiness: 1,
    image: "https://lh5.googleusercontent.com/proxy/X3_Io8z31Fim6hdOC47CIAOM4iBAAJQ5XKa9jw14gwbgqdVjA-lc-dzyxKdkqWsn52jtOIkFc8fIAMz67e7NfUfiKF7VR30uZ--sFoHxvG8tt1upS23ecWnZZ2Y"
  ) }

  let!(:new_post) { Post.create(
    body: "What a cutie!",
    floof: new_floof
  ).to_json }

  describe "POST#create" do
    it "creates a new post" do
      prev_count = Post.count
      post(:create, body: new_post)
      expect(Post.count).to eq(prev_count + 1)
    end

    it "returns the json of the new post" do
      post(:create, body: new_post)
      returned_json = JSON.parse(response.body)

      expect(response.status).to eq 200
      expect(response.content_type).to eq("application/json")

      expect(returned_json).to be_kind_of(Hash)
      expect(returned_json).to_not be_kind_of(Array)
      expect(returned_json["body"]).to eq "What a cutie!"
      expect(returned_json["floof_id"]).to eq new_floof.id
    end
  end
end
