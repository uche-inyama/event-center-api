require 'rails_helper'
require 'pp'


RSpec.describe "/centers", type: :request do
  let(:valid_attributes)  {
      {:building => 'Avalon',
      :hall => 'Brisk', :city => 'Imogeneborough',
      :state => 'California', :price => 1200, :capacity => 300 }
  }

  let(:invalid_attributes) {
    {:building => '',
      :hall => '', :city => '',
      :state => '', :price => '' , :capacity => '' }
  }

  let(:valid_headers) {
    {}
  }

  describe "GET /index" do
    it "renders a successful response" do
      center = Center.create! valid_attributes
      get centers_url
      expect(response).to be_successful
    end
  end

  describe "POST /create" do
    context "with valid parameters" do
      it "creates a new Center" do
        expect {
          post centers_url,
               params: { center: valid_attributes }, headers: valid_headers, as: :json
        }.to change(Center, :count).by(1)
      end

      it "renders a JSON response with the new center" do
        post centers_url,
             params: { center: valid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:created)
        expect(response.content_type).to match(a_string_including("application/json; charset=utf-8"))
      end
    end

    context "with invalid parameters" do
      it "does not create a new Center" do
        expect {
          post centers_url,
               params: { center: invalid_attributes }, as: :json
        }.to change(Center, :count).by(0)
      end

      it "renders a JSON response with errors for the new center" do
        post centers_url,
             params: { center: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end
  end

  describe "PATCH /update" do
    context "with valid parameters" do
      let(:new_attributes) {
        { :center_id => 1,
          :building => 'Brisbane',
          :hall => 'Vogue', :city => 'Denver',
          :state => 'Colorado', :price => 1500, :capacity => 200 
        }
      } 

      it "updates the requested center" do
        center = Center.create! valid_attributes
        patch center_url(center),
              params: { center: new_attributes }, headers: valid_headers, as: :json
        center.reload
        expect(response).to have_http_status(200)
      end

      it "renders a JSON response with the center" do
        center = Center.create! valid_attributes
        patch center_url(center),
              params: { center: new_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:ok)
        pp (response.content_type)
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end

    context "with invalid parameters" do
      it "renders a JSON response with errors for the center" do
        center = Center.create! valid_attributes
        patch center_url(center),
              params: { center: invalid_attributes }, headers: valid_headers, as: :json
        expect(response).to have_http_status(:unprocessable_entity)
        expect(response.content_type).to eq("application/json; charset=utf-8")
      end
    end
  end

  describe "DELETE /destroy" do
    it "destroys the requested center" do
      center = Center.create! valid_attributes
      expect {
        delete center_url(center), headers: valid_headers, as: :json
      }.to change(Center, :count).by(-1)
    end
  end
end

