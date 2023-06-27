require_relative '../student'

describe Student do
  context 'Check Student creating tasks' do
    it 'should create a Student' do
      new_student = Student.new(nil, 12, 'Student1')
      expect(new_student.name).to eq('Student1')
    end
  end
  context 'Check person creating task' do
    it 'should have the correct Age' do
      new_student = Student.new(nil, 24, 'Person2')
      expect(new_student.play_hooky).to eq('¯\(ツ)/¯')
    end
  end
end
