require './lib/numerals.rb'

describe RomanNumerals do

  it 'returns I when input is 1' do
    expect(subject.convert(1)).to eq "I"
  end

  # it 'returns II when input is 2' do
  #   expect(subject.convert(2)).to eq "II"
  # end

end
