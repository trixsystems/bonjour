require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'is valid with a title' do
    category = Category.new(title: 'Peixe')
    expect(category).to be_valid
  end

  it 'is not valid without a title' do
    category = Category.new
    expect(category).not_to be_valid
  end
end
