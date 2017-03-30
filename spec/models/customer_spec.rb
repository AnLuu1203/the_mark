require 'rails_helper'

RSpec.describe Customer, type: :model do

  it { is_expected.to have_one(:user) }

  it { is_expected.to validate_presence_of(:first_name).on(:update) }
  it { is_expected.to validate_presence_of(:last_name).on(:update) }
  it { is_expected.to validate_presence_of(:phone).on(:update) }
  it { is_expected.to validate_presence_of(:address).on(:update) }

  let(:customer) { create(:customer) }

end
