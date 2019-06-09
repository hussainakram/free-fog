AdminUser.find_or_create_by(email: "super_admin@example.com") do |user|
  user.password = "password"
end
Margin.where(plan: 'Basic', ourea_fixed: 0.35, etisalat_factor: 1.2).first_or_create!
Margin.where(plan: 'Standard', ourea_fixed: 0.70, etisalat_factor: 1.5).first_or_create!

puts "************************ Records Inserted ************************"
