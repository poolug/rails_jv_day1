require 'rails_helper'

RSpec.describe Strain, type: :model do
  it 'no puede ir vacío' do
    strain = Strain.create(name: nil)
    expect(strain).to_not be_valid
  end

  it 'debe tener un nombre' do
    strain = Strain.create(name: " ")
    expect(strain).to_not be_valid
  end

  it 'debe ser único' do
    strain_one = Strain.create(name: "merlot")
    strain_two = Strain.create(name: "merlot")
    expect(strain_two).to_not be_valid
  end
end
