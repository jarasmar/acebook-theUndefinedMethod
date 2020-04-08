# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { described_class.new }

  it 'is valid with valid attributes' do
    subject.message = 'Anything'
    expect(subject).to be_valid
  end

  it 'is not valid without a message' do
    expect(subject).to_not be_valid
  end
end
