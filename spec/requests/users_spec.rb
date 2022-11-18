require 'rails_helper'

RSpec.describe '/users', type: :request do
  describe 'GET /new' do
    it 'renders a successful response' do
      get new_user_session_path
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_user_registration_path
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_user_password_path
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get new_user_confirmation_path
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get user_confirmation_path
      expect(response).to be_successful
    end
  end

  describe 'GET /new' do
    it 'renders a successful response' do
      get users_path
      expect(response).to be_successful
    end
  end

  describe 'POST' do
    it 'renders a successful response' do
      post users_path
      expect(response).to be_successful
    end
  end

  describe 'POST' do
    it 'renders a successful response' do
      post user_session_path
      expect(response).to be_successful
    end
  end

  describe 'PATCH' do
    it 'renders a successful response' do
      patch user_password_path
      expect(response).to be_successful
    end
  end
end
