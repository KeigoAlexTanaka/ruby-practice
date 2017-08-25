require_relative 'methods'

describe '#arr_count' do

  let(:arr) { [5, 9, 4, 5, 5] }

  it 'counts the number of appearances when the element is present' do
    expect(arr_count(arr, 5)).to eq(3)
    expect(arr_count(arr, 9)).to eq(1)
  end

  it 'is 0 when the element is not found' do
    expect(arr_count(arr, 7)).to eq(0)
  end

  it 'is 0 when the array is empty' do
    expect(arr_count([], :foo)).to eq(0)
  end
end

describe '#hash_count' do
                # this is hash where the key is a person and the value is their age
  let(:hash) { {stacey: 30, tracey: 28, lacey: 30, macey: 27} }

  it 'counts the number of times a value appears in the hash' do
    expect(hash_count(hash, 30)).to eq(2)
    expect(hash_count(hash, 28)).to eq(1)
  end

  it 'is 0 when the value is not in the hash' do
    expect(hash_count(hash, 23)).to eq(0)
  end

  it 'is 0 when the hash is empty' do
    expect(hash_count({}, :foo)).to eq(0)
  end
end

describe '#fizzbuzz' do
  it 'is n when not divisible by 3 or 5' do
    expect(fizzbuzz(1)).to eq(1)
    expect(fizzbuzz(7)).to eq(7)
  end

  it 'is :fizz when only 3 divides n' do
    expect(fizzbuzz(3)).to eq(:fizz)
    expect(fizzbuzz(6)).to eq(:fizz)
  end

  it 'is :buzz when only 5 divides n' do
    expect(fizzbuzz(5)).to eq(:buzz)
    expect(fizzbuzz(10)).to eq(:buzz)
  end

  it 'is :fizzbuzz when the 3 AND 5 divide n' do
    expect(fizzbuzz(15)).to eq(:fizzbuzz)
    expect(fizzbuzz(30)).to eq(:fizzbuzz)
    expect(fizzbuzz(0)).to eq(:fizzbuzz)
  end
end

describe '#fizzbuzz_arr' do
  it 'only is and empty array when n is 0' do
    expect(fizzbuzz_arr(0)).to be_empty
  end

  it 'has the correct values when n is greater than 0' do
    expect(fizzbuzz_arr(2)).to eq([:fizzbuzz, 1])
    expect(fizzbuzz_arr(8)).to eq([:fizzbuzz, 1, 2, :fizz, 4, :buzz, :fizz, 7])
                        # inputs: 0         , 1, 2, 3,   , 4, 5,   , 6,   , 7
  end
end

describe '#two_sum' do
  let (:arr) { [2, 11, 3, 9, 7, 4] }

  it 'returns a pair of numbers in arr summing to num' do
    expect(two_sum(arr, 10)).to match_array([3, 7])
  end

  it 'returns nil when no pair sums to num' do
    expect(two_sum(arr, 25)).to be_nil
  end
end
