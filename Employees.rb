class Employees

  @@employees = []

  def self.employees
    @@employees
  end

  def self.create(emp)
    if @@employees.any? { |employee| employee[:emp_id] == emp[:emp_id] }
      nil
    else
      @@employees.push(emp)
    end
  end

  def self.update(id, data)
    @@employees.map! do |employee|
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

  def self.delete(id)
    @@employees.select! do |employee|
      employee[:emp_id] != id
    end
  end

end