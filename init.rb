#!/usr/bin/env ruby
require_relative('Employees')
require('date')

Employees.create({
  emp_id: 1,
  name: 'Ahmed',
  joining_date: Date.new(2018,11,1),
  department: 'back-end',
  salary: 20000
}
)

Employees.create({
  emp_id: 2,
  name: 'Khaled',
  joining_date: Date.new(2018,11,1),
  department: 'back-end',
  salary: 20000
}
)

Employees.create({
  emp_id: 3,
  name: 'Omar',
  joining_date: Date.new(2018,11,1),
  department: 'back-end',
  salary: 20000
}
)

Employees.update(1, {
  emp_id: 3,
  name: 'Ad',
  joining_date: Date.new(2019,11,1),
  department: 'back-end',
  salary: 200000
}
)

Employees.delete(2)

puts Employees.employees