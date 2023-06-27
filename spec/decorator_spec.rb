require_relative '../person'
require_relative '../capitalizedecorator'
require_relative '../trimmerdecorator'

describe CapitalizeDecorator do
  let(:nameable) { double('Nameable', correct_name: 'maximilianus') }
  let(:decorator) { CapitalizeDecorator.new(nameable) }

  describe 'Check Proper Capitalization Decoration' do
    it 'should Decorate a Person name' do
      expect(decorator.correct_name).to eq('Maximilianus')
    end
  end
end

describe TrimmerDecorator do
  let(:nameable) { double('Nameable') }
  let(:decorator) { TrimmerDecorator.new(nameable) }

  describe 'Check Proper Trimmer Decoration' do
    context 'when the name is longer than 10 characters' do
      it 'trims the name to 10 characters' do
        allow(nameable).to receive(:correct_name).and_return('Maximilianus')

        expect(decorator.correct_name).to eq('Maximilian')
      end
    end
  end
end
