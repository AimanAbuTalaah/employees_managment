#!/usr/bin/env ruby
require('date')


$employees = []

def create(emp)
  if $employees.any? { |employee| employee[:emp_id] == emp[:emp_id] }
    nil
  else
    $employees.push(emp)
  end
end

def update(id, data)
  $employees.map! do |employee|
    if employee[:emp_id] == id
      {
        emp_id: employee[:emp_id],
        name: data[:name] || employee[:name],
        joining_date: data[:joining_date] || employee[:joining_date],
        department: data[:department] || employee[:department],
        salary: data[:salary] || employee[:salary]
      }
    else
      employee
    end
  end
end

def delete(id)
  $employees.select! do |employee|
    employee[:emp_id] != id
  end
end

def search_by_id(id)
  $employees.find { |employee| employee[:emp_id] == id}
end

create({
  emp_id: 1,
  name: 'Ahmed',
  joining_date: Date.new(2018,11,1),
  department: 'back-end',
  salary: 20000
}
)

create({
  emp_id: 2,
  name: 'Khaled',
  joining_date: Date.new(2018,11,1),
  department: 'back-end',
  salary: 20000
}
)

create({
  emp_id: 3,
  name: 'Omar',
  joining_date: Date.new(2018,11,1),
  department: 'back-end',
  salary: 20000
}
)

update(1, {
  emp_id: 3,
  name: 'Ad',
  joining_date: Date.new(2019,11,1),
  department: 'back-end',
  salary: 200000
}
)

delete(2)

puts $employees