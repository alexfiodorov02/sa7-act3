require 'csv'

def csv_to_hash(file_name)
  csv_data = CSV.read(file_name, headers: true)
  csv_data.map(&:to_h)
end

data = csv_to_hash('data.csv')
puts data
