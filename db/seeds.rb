Term.delete_all
User.delete_all
Region.delete_all
Student.delete_all
School.delete_all
Instrument.delete_all
ProgramType.delete_all
CourseType.delete_all
Course.delete_all
Assignment.delete_all
Program.delete_all
Enrollment.delete_all
Roster.delete_all
Schedule.delete_all
AttendanceMarking.delete_all

@ter1 = Term.create(name: '2013 fall', start_date: '2013-09-01', end_date: '2014-03-31', current: true)

@tea1 = User.create(email: 'teacher1@gmail.com', password: '123', password_confirmation: '123', first_name: 'Tom', last_name: 'Green', type: 'Teacher', active: true)
@tea2 = User.create(email: 'teacher2@gmail.com', password: '123', password_confirmation: '123', first_name: 'Jerry', last_name: 'White', type: 'Teacher', active: true)

@reg1 = Region.create(name: 'Baltimore', active: true)

@sch1 = School.create(name: 'Johns Hopkins University', abbrev: 'JHU', region_id: @reg1.id, active: true)
@sch2 = School.create(name: 'New York University', abbrev: 'NYU', region_id: @reg1.id, active: true)
@sch3 = School.create(name: 'Carnegie Mellon University', abbrev: 'CMU', region_id: @reg1.id, active: true)

@stu1 = Student.create(first_name: 'Steve', last_name: 'Rifkin', school_id: @sch1.id, active: true)
@stu2 = Student.create(first_name: 'Steve', last_name: 'Deblasio', school_id: @sch1.id, active: true)
@stu3 = Student.create(first_name: 'Phil', last_name: 'Gold', school_id: @sch2.id, active: true)
@stu4 = Student.create(first_name: 'Christopher', last_name: 'Venghaus', school_id: @sch2.id, active: true)

@ins1 = Instrument.create(name: 'piano', active: true)

@proType1 = ProgramType.create(name: 'Pod Program')

@couType1 = CourseType.create(name: 'Regular Class')

@pro1 = Program.create(program_type_id: @proType1.id, instrument_id: @ins1.id, school_id: @sch1.id, regular_courses_per_year: 100, group_courses_per_year: 5, active: true)
@pro2 = Program.create(program_type_id: @proType1.id, instrument_id: @ins1.id, school_id: @sch2.id, regular_courses_per_year: 100, group_courses_per_year: 5, active: true)
@pro3 = Program.create(program_type_id: @proType1.id, instrument_id: @ins1.id, school_id: @sch3.id, regular_courses_per_year: 100, group_courses_per_year: 5, active: true)

Assignment.create(program_id: @pro1.id, teacher_id: @tea1.id)
Assignment.create(program_id: @pro2.id, teacher_id: @tea1.id)
Assignment.create(program_id: @pro3.id, teacher_id: @tea2.id)

@cou1 = Course.create(program_id: @pro1.id, term_id: @ter1.id, name: 'Class 1', course_type_id: @couType1.id)
@cou2 = Course.create(program_id: @pro1.id, term_id: @ter1.id, name: 'Class 2', course_type_id: @couType1.id)
@cou3 = Course.create(program_id: @pro2.id, term_id: @ter1.id, name: 'Class 3', course_type_id: @couType1.id)
@cou4 = Course.create(program_id: @pro3.id, term_id: @ter1.id, name: 'Class 4', course_type_id: @couType1.id)

Enrollment.create(program_id: @pro1.id, student_id: @stu1.id)
Enrollment.create(program_id: @pro2.id, student_id: @stu2.id)
Enrollment.create(program_id: @pro3.id, student_id: @stu3.id)
Enrollment.create(program_id: @pro3.id, student_id: @stu4.id)

Schedule.create(course_id: @cou1.id, start_date: '2013-09-01', end_date: '2014-03-31', start_time: 600, end_time: 700, day_of_week: 2)
Schedule.create(course_id: @cou1.id, start_date: '2013-09-01', end_date: '2014-03-31', start_time: 600, end_time: 700, day_of_week: 4)
Schedule.create(course_id: @cou2.id, start_date: '2013-09-01', end_date: '2014-03-31', start_time: 600, end_time: 700, day_of_week: 2)
Schedule.create(course_id: @cou3.id, start_date: '2013-09-01', end_date: '2014-03-31', start_time: 600, end_time: 700, day_of_week: 3)
Schedule.create(course_id: @cou4.id, start_date: '2013-09-01', end_date: '2014-03-31', start_time: 600, end_time: 700, day_of_week: 4)
Schedule.create(course_id: @cou4.id, start_date: '2014-01-01', end_date: '2014-02-10', start_time: 600, end_time: 700, day_of_week: 5)

Roster.create(student_id: @stu1.id, course_id: @cou1.id, start_date: '2013-09-01', end_date: '2014-03-31')
Roster.create(student_id: @stu2.id, course_id: @cou2.id, start_date: '2013-09-01', end_date: '2014-03-31')
Roster.create(student_id: @stu3.id, course_id: @cou3.id, start_date: '2013-09-01', end_date: '2014-03-31')
Roster.create(student_id: @stu4.id, course_id: @cou4.id, start_date: '2013-09-01', end_date: '2014-03-31')

AttendanceMarking.create(name: 'attend', abbrev: 'attend')
