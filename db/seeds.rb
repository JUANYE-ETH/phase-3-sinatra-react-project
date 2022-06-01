puts "🌱 Seeding spices..."

# Seed your database here
Category.create(name:"Learning")
Category.create(name:"Deep work")
Category.create(name:"Shallow work")
Category.create(name:"Body Care")


Todo.create(text: "wash dishes", category_id: 3)
Todo.create(text: "graduate flatiron", category_id: 2)
Todo.create(text: "do the project", category_id: 1)
puts "✅ Done seeding!"
