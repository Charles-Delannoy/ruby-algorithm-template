require 'ecart_binaire'

describe "Exercice" do

  context '#to_binary' do
    it 'should convert 0 to binary' do
      expect(to_binary(0)).to eq("0")
    end

    it 'should convert 1 to binary' do
      expect(to_binary(1)).to eq("1")
    end

    it 'should convert 2 to binary' do
      expect(to_binary(2)).to eq("10")
    end

    it 'should convert 5 to binary' do
      expect(to_binary(5)).to eq("101")
    end

    it 'should convert 6 to binary' do
      expect(to_binary(6)).to eq("110")
    end

    it 'should convert 8 to binary' do
      expect(to_binary(8)).to eq("1000")
    end

    it 'should convert 22 to binary' do
      expect(to_binary(22)).to eq("10110")
    end

    it 'should convert 2147483647 to binary' do
      expect(to_binary(2147483647)).to eq("1111111111111111111111111111111")
    end
  end
end
