json.array! @departments.each do |department|
  json.id department.id
  json.name department.name
  json.manager department.manager
  json.code department.code
end