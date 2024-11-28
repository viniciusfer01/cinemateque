require 'rails_helper'

RSpec.describe MovieTheater, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name)  }
    it { should validate_presence_of(:city)  }
    it { should have_many(:rooms) }
  end
end
