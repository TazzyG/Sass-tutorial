#Seeding Plan table

p1 = Stripe::Plan.retrieve("plan-free")
p1 = Stripe::Plan.retrieve("plan-group")

Plan.create(:stripe_id => p1.id, :name => p1.name, :price => p1.amount, :intervals => p1.intervals)