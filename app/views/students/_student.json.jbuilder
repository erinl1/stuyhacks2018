json.extract! student, :id, :name, :student_id, :address, :school_id, :created_at, :updated_at
json.schoolname student.school.name
json.schooladdress student.school.address 
json.url student_url(student, format: :json)
