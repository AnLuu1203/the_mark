require 'rails_helper'

RSpec.describe Specification, type: :model do

  it { is_expected.to belong_to(:product) }

end
