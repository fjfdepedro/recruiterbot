# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Term.categories.each do |category|
  puts "Seeding term #{category}..."
  count = 0
  seeds_path = Rails.root.join("db/seeds/#{category}.txt")

  File.open(seeds_path) do |file|
    file.each do |line|
      Term.create!(term: line.strip, category: category)
      count += 1
    end
  end

  puts "\tLoaded #{count} records..."

end

puts "Seeding message templates..."
count = 0

File.open(Rails.root.join("db/seeds/message_templates.txt")) do |file|
  file.each do |line|
    MessageTemplate.create!(message: line.strip)
    count += 1
  end
end

puts "\tLoaded #{count} records..."
