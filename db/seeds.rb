Student.destroy_all

bob = Student.new
bob.first_name = "Bobby"
bob.last_name = "Bobsalot"
bob.active = true
bob.save

jack = Student.new
jack.first_name = "Jack"
jack.last_name = "Jack"
jack.save
