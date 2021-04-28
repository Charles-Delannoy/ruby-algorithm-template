require 'ecart_binaire'

describe "Exercice" do

  context '#to_binary' do

    describe 'format' do
      it 'should return a string' do
        expect(to_binary(0)).to be_a(String)
      end
    end

    describe 'tests' do
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

      it 'should convert 2_147_473_647 to binary' do
        expect(to_binary(2_147_473_647)).to eq("1111111111111111101100011101111")
      end

      it 'should convert 2_147_483_647 to binary' do
        expect(to_binary(2_147_483_647)).to eq("1111111111111111111111111111111")
      end
    end
  end

  context '#binary_gap' do

    describe 'format' do
      it 'should return an integer' do
        expect(binary_gap("0")).to be_a(Integer)
      end
    end

    describe 'tests' do
      it 'should return the binary gap for 0 binary' do
        expect(binary_gap("0")).to eq(0)
      end

      it 'should return the binary gap for 1 binary' do
        expect(binary_gap("1")).to eq(0)
      end

      it 'should return the binary gap for 10 binary' do
        expect(binary_gap("10")).to eq(0)
      end

      it 'should return the binary gap for 101 binary' do
        expect(binary_gap("101")).to eq(1)
      end

      it 'should return the binary gap for 110 binary' do
        expect(binary_gap("110")).to eq(0)
      end

      it 'should return the binary gap for 1000 binary' do
        expect(binary_gap("1000")).to eq(0)
      end

      it 'should return the binary gap for 10110 binary' do
        expect(binary_gap("10110")).to eq(1)
      end

      it 'should return the binary gap for 1111111111111111101100011101111 binary' do
        expect(binary_gap("1111111111111111101100011101111")).to eq(3)
      end

      it 'should return the binary gap for 1111111111111111111111111111111 binary' do
        expect(binary_gap("1111111111111111111111111111111")).to eq(0)
      end
    end
  end

  context '#integer_binary_gap' do
    describe 'format' do
      it 'should return an integer' do
        expect(integer_binary_gap(0)).to be_a(Integer)
      end
    end
    describe 'tests' do
      it 'should return the binary gap for 0' do
        expect(integer_binary_gap(0)).to eq(0)
      end

      it 'should return the binary gap for 1' do
        expect(integer_binary_gap(1)).to eq(0)
      end

      it 'should return the binary gap for 2' do
        expect(integer_binary_gap(2)).to eq(0)
      end

      it 'should return the binary gap for 5' do
        expect(integer_binary_gap(5)).to eq(1)
      end

      it 'should return the binary gap for 6' do
        expect(integer_binary_gap(6)).to eq(0)
      end

      it 'should return the binary gap for 8' do
        expect(integer_binary_gap(8)).to eq(0)
      end

      it 'should return the binary gap for 22' do
        expect(integer_binary_gap(22)).to eq(1)
      end

      it 'should return the binary gap for 2_147_473_647' do
        expect(integer_binary_gap(2_147_473_647)).to eq(3)
      end

      it 'should return the binary gap for 2_147_483_647' do
        expect(integer_binary_gap(2_147_483_647)).to eq(0)
      end
    end
  end
end
