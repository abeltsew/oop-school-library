require_relative '../teacher'

describe Teacher do
  context 'Check Teacher creating tasks' do
    it 'should create a Teacher' do
      new_teacher = Teacher.new(12, 'Teacher1', 'PHD')
      expect(new_teacher.name).to eq('Teacher1')
      expect(new_teacher.specialization).to eq('PHD')
    end
  end
  context 'Check person creating task' do
    it 'should have the correct Age' do
      new_teacher = Teacher.new(24, 'Teacher2', 'BSC')
      expect(new_teacher.can_use_service?).to eq(true)
    end
  end
end
