require 'rails_helper'

RSpec.describe User, type: :model do

  it { is_expected.to belong_to(:role) }

  context 'User is Customer' do

    subject { build(:user, :customer) }

    it { expect(subject.customer?).to eq(true) }
    it { expect(subject.admin?).to eq(false) }

  end

  context 'User is Admin' do

    subject { build(:user, :admin) }

    it { expect(subject.admin?).to eq(true) }
    it { expect(subject.customer?).to eq(false) }

  end

end
