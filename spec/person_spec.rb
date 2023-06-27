require_relative '../person'

describe Person do
  context 'Check person creating tasks' do
    it 'should create a person' do
      new_person = Person.new(12, 'Person1')
      expect(new_person.name).to eq('Person1')
    end
  end
  context 'Check person creating task' do
    it 'should have the correct Age' do
      new_person = Person.new(24, 'Person2')
      expect(new_person.age).to eq(24)
    end
  end
end
