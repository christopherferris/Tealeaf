# Exercises
# 1. first you create a class, then create a variable and assign the class to the variable.
# class HumanDance
# end
#
# polka = HumanDance.new

# 2. A module is a collection of behaviors that is useable in other classes via mixins. It creates
# a method that you can use with multiple classes.
# 
# module Play
#   def play(music)
#     puts "#{music}"
#   end
# end
#
# class HumanDance
#   include Play
# end
#
# class AlienDance
#   iclude Play
# end
#
# polka = HumanDance.new
# polka.play("Bong!")
# raian = AlienDance.new
# raian.play("Zoomlo!")