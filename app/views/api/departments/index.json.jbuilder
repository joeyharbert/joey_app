json.array! @departments.each do |department|
  json.partial! 'department.json.jbuilder', department: department
end