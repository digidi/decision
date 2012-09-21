User.find_or_initialize_by_email('admin@demo.de').tap do | user |
  if user.new_record? 
     user.email =  "admin@demo.de",
     user.password = "123123",
     user.password_confirmation = "123123",
     user.roles_mask = 1,
     user.fio = "GDO",
     user.save!
  end

end

