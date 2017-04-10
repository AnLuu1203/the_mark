require 'rails_helper'

RSpec.describe Admin::PhonesController, type: :controller do

  context 'without login' do

    let(:is_expected_to_fail) { is_expected.to redirect_to(new_user_session_path) }

    it { get :index; is_expected_to_fail }
    it { get :new; is_expected_to_fail }
    it { get :edit, id: '1'; is_expected_to_fail }
    it { post :create, phone: {}; is_expected_to_fail }
    it { put :update, id: '1', phone: {}; is_expected_to_fail }
    it { delete :destroy, id: '1'; is_expected_to_fail }

  end

end
