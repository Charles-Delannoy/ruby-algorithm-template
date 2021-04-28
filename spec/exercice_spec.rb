require 'ecart_binaire'

describe "Exercice" do

  let(:true_assertion) do
    true
  end

  it "should assert the truth" do
    expect(true_assertion).to be(true)
  end

  context '#exercice'
  it 'should return false' do
    expect(exercice_method).to be(false)
  end
end
