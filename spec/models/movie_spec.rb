require 'rails_helper'

RSpec.describe Movie, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:title)  }
    it { should validate_presence_of(:year)  }
    it { should validate_presence_of(:director)  }
    it { should validate_presence_of(:plot)  }
    it { should validate_numericality_of(:year).is_greater_than_or_equal_to(1878) }
  end
end
