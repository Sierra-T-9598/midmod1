require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do
    @course = Course.new("Calculus", 2)
    @student1 = Student.new({name: "Morgan", age: 21})
    @student2 = Student.new({name: "Jordan", age: 29})
  end

  it 'exists' do
    expect(@course).to be_instance_of(Course)
  end

  it 'has attributes' do
    expect(@course.name).to eq("Calculus")
    expect(@course.capacity).to eq(2)
    expect(@course.students).to eq([])
  end

  it 'is either full or not' do
    expect(@course.full?).to be(false)
  end

  it 'can enroll students' do
    @course.enroll(@student1)
    @course.enroll(@student2)
    expect(@course.students).to eq([@student1, @student2])
    expect(@course.full?).to be(true)
  end
end
