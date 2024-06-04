require 'spec_helper'
require_relative '../cipher'

RSpec.describe 'Cipher Exercises' do
  describe 'create cipher' do
    it 'returns the correct cipher' do
      cipher = caesar_cipher('What a string!', 5)
      result = 'Bmfy f xywnsl!'

      expect(cipher).to eq(result)
    end
  end
end
