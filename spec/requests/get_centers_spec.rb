require 'rails_helper'



# RSpec.describe "/centers", type: :request do
#   let(:valid_attributes) {
#     skip("Add a hash of attributes valid for your model")
#   }

#   let(:invalid_attributes) {
#     skip("Add a hash of attributes invalid for your model")
#   }

#   let(:valid_headers) {
#     {}
#   }

#   describe "GET /index" do
#     it "renders a successful response" do
#       Center.create! valid_attributes
#       get centers_url, headers: valid_headers, as: :json
#       expect(response).to be_successful
#     end
#   end

#   describe "GET /show" do
#     it "renders a successful response" do
#       center = Center.create! valid_attributes
#       get center_url(center), as: :json
#       expect(response).to be_successful
#     end
#   end

#   describe "POST /create" do
#     context "with valid parameters" do
#       it "creates a new Center" do
#         expect {
#           post centers_url,
#                params: { center: valid_attributes }, headers: valid_headers, as: :json
#         }.to change(Center, :count).by(1)
#       end

#       it "renders a JSON response with the new center" do
#         post centers_url,
#              params: { center: valid_attributes }, headers: valid_headers, as: :json
#         expect(response).to have_http_status(:created)
#         expect(response.content_type).to match(a_string_including("application/json"))
#       end
#     end

#     context "with invalid parameters" do
#       it "does not create a new Center" do
#         expect {
#           post centers_url,
#                params: { center: invalid_attributes }, as: :json
#         }.to change(Center, :count).by(0)
#       end

#       it "renders a JSON response with errors for the new center" do
#         post centers_url,
#              params: { center: invalid_attributes }, headers: valid_headers, as: :json
#         expect(response).to have_http_status(:unprocessable_entity)
#         expect(response.content_type).to eq("application/json")
#       end
#     end
#   end

#   describe "PATCH /update" do
#     context "with valid parameters" do
#       let(:new_attributes) {
#         skip("Add a hash of attributes valid for your model")
#       }

#       it "updates the requested center" do
#         center = Center.create! valid_attributes
#         patch center_url(center),
#               params: { center: invalid_attributes }, headers: valid_headers, as: :json
#         center.reload
#         skip("Add assertions for updated state")
#       end

#       it "renders a JSON response with the center" do
#         center = Center.create! valid_attributes
#         patch center_url(center),
#               params: { center: invalid_attributes }, headers: valid_headers, as: :json
#         expect(response).to have_http_status(:ok)
#         expect(response.content_type).to eq("application/json")
#       end
#     end

#     context "with invalid parameters" do
#       it "renders a JSON response with errors for the center" do
#         center = Center.create! valid_attributes
#         patch center_url(center),
#               params: { center: invalid_attributes }, headers: valid_headers, as: :json
#         expect(response).to have_http_status(:unprocessable_entity)
#         expect(response.content_type).to eq("application/json")
#       end
#     end
#   end

#   describe "DELETE /destroy" do
#     it "destroys the requested center" do
#       center = Center.create! valid_attributes
#       expect {
#         delete center_url(center), headers: valid_headers, as: :json
#       }.to change(Center, :count).by(-1)
#     end
#   end
# end

describe 'get', :type => :request do
  let!(:centers) {FactoryBot.create_list(:center, 5)}

  before {get '/api/v1/centers'}

  it 'returns all centers' do
    expect(JSON.parse(response.body).size).to eq(5)
  end

  it 'returns status code 200' do
    expect(response).to have_http_status(:success)
  end
end
