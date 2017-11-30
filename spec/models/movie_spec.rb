require 'rails_helper'

describe Movie do
  it { should validate_presence_of :name }
  it { should validate_presence_of :release }
  it { should validate_presence_of :description}
  it { should have_many :reviews}
end
