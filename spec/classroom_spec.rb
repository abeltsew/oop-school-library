require_relative '../student'
require_relative '../classroom'

describe ClassRoom do
  context 'Check Classroom Assignment ' do
    it 'should Asign a student to a class' do
      new_student = Student.new(nil, 12, 'Student1')
      new_class = ClassRoom.new('CS101')
      new_class.add_students(new_student)
      expect(new_class.students[0].name).to eq('Student1')
      expect(new_student.classroom.label).to eq('CS101')
    end
  end
end
