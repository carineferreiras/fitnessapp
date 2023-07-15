puts "🌱 SEEDING DATA....."

Workout.delete_all
Workout.reset_pk_sequence

AdminUser.delete_all
AdminUser.reset_pk_sequence

User.delete_all
User.reset_pk_sequence

Exercise.delete_all
Exercise.reset_pk_sequence

WorkoutVariant.delete_all
WorkoutVariant.reset_pk_sequence

AdminUser.create!(username: 'carineferreiras', password: '123654789Caca', password_confirmation: '123654789Caca')

user1 = User.create!(
  firstname: 'Vane',
  lastname: 'Peterson',
  phone_number: '0635988742',
  email_address: 'vane_b@gmail.com',
  password: 'password123',
  password_confirmation: 'password123'
)

user2 = User.create!(
  firstname: 'Julia',
  lastname: 'Smith',
  phone_number: '0459355842',
  email_address: 'julia@gmail.com',
  password: 'password123',
  password_confirmation: 'password123'
)

user3 = User.create!(
  firstname: 'Paul',
  lastname: 'Anderson',
  phone_number: '0169822547',
  email_address: 'paul@gmail.com',
  password: 'password123',
  password_confirmation: 'password123'
)

# --------------WORKOUT-----------------------------------
workout1 = Workout.create!(
  title: "Back Workout",
  description: "Work out your back"
)
workout1.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'back')
workout1.workout_variants.create!(duration: 'medium', is_default: false, muscle_group_name: 'back')
workout1.workout_variants.create!(duration: 'long', is_default: false, muscle_group_name: 'back')

workout2 = Workout.create!(
  title: "Chest Workout",
  description: "Work out your chest"
)
workout2.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'chest')
workout2.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'chest')
workout2.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'chest')

workout3 = Workout.create!(
  title: "Glutes Workout",
  description: "Work out your glutes"
)
workout3.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'glutes')
workout3.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'glutes')
workout3.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'glutes')

workout4 = Workout.create!(
  title: "Hamstrings",
  description: "Work out your Hamstrings"
)
workout4.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'Hamstrings')
workout4.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'Hamstrings')
workout4.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'Hamstrings')

workout5 = Workout.create!(
  title: "Quads",
  description: "Work out your Quads"
)
workout5.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'Quads')
workout5.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'Quads')
workout5.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'Quads')

workout6 = Workout.create!(
  title: "Biceps Workout",
  description: "Work out your Biceps"
)
workout6.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'Biceps')
workout6.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'Biceps')
workout6.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'Biceps')

workout7 = Workout.create!(
  title: "Triceps Workout",
  description: "Work out your Triceps"
)
workout7.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'Triceps')
workout7.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'Triceps')
workout7.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'Triceps')

workout8 = Workout.create!(
  title: "Cardio Workout",
  description: "Cardio"
)
workout8.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'Cardio')
workout8.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'Cardio')
workout8.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'Cardio')

puts "🌱 FINISHED SEEDING!!!!"
