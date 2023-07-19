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
  firstname: 'Amy',
  lastname: 'Robson',
  phone_number: '04567990022',
  email_address: 'amyrobson2@gmail.com',
  password: 'password123',
  password_confirmation: 'password123'
)

user2 = User.create!(
  firstname: 'Peter',
  lastname: 'Hogan',
  phone_number: '0423764789',
  email_address: 'peterhogan@gmail.com',
  password: 'password123',
  password_confirmation: 'password123'
)

user3 = User.create!(
  firstname: 'Anna',
  lastname: 'Mary',
  phone_number: '0432234567',
  email_address: 'annamarry@gmail.com',
  password: 'password123',
  password_confirmation: 'password123'
)

# --------------WORKOUT-----------------------------------

workout1 = Workout.create!(
  workout_id:1
  title: "Back Workout",
  description: "Work out your back",
  user_id: 1
  muscle_group_name: "back"
)
workout1.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'back')

workout1.exercises.create!(
  name: "Lat Pulldown",
  repetitions: 10,
  sets: 3,
  weight: 50
) 

workout1.exercises.create!(
  name: "Deadlift",
  repetitions: 8,
  sets: 4,
  weight: 100
)

workout2 = Workout.create!(
  workout_id: 2
  title: "Back Workout",
  description: "Work out your back",
  user_id: 2
  muscle_group_name: "back"
)
workout2.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'back')

workout2.exercises.create!(
  name: "Lat Pulldown",
  repetitions: 10,
  sets: 3,
  weight: 50
)
workout2.exercises.create!(
  name: "Deadlift",
  repetitions: 8,
  sets: 4,
  weight: 100
)
workout2.exercises.create!(
  name: "Push-Ups",
  repetitions: 8,
  sets: 4,
  weight: 0
)

workout3 = Workout.create!(
  workout_id:3
  title: "Back Workout",
  description: "Work out your back",
  user_id: 3
  muscle_group_name: "back"
)
workout3.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'back')

workout3.exercises.create!(
  name: "Lat Pulldown",
  repetitions: 10,
  sets: 3,
  weight: 50
)
workout3.exercises.create!(
  name: "Deadlift",
  repetitions: 8,
  sets: 4,
  weight: 100
)
workout3.exercises.create!(
  name: "Push-Ups",
  repetitions: 8,
  sets: 4,
  weight: 0
)
workout3.exercises.create!(
  name: "Bent-Over-Row",
  repetitions: 8,
  sets: 4,
  weight: 20
)

# workout2 = Workout.create!(
#   title: "Chest Workout",
#   description: "Work out your chest",
#   user: user2
# )
# workout2.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'chest')

# workout2.exercises.create!(
#   user: user2,
#   name: "Bench Press",
#   repetitions: 12,
#   sets: 3,
#   weight: 60
# )
# workout2.exercises.create!(
#   user: user2,
#   name: "Dumbbell Flyes",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )

# workout2 = Workout.create!(
#   title: "Chest Workout",
#   description: "Work out your chest",
#   user: user2
# )
# workout2.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'chest')

# workout2.exercises.create!(
#   user: user2,
#   name: "Bench Press",
#   repetitions: 12,
#   sets: 3,
#   weight: 60
# )
# workout2.exercises.create!(
#   user: user2,
#   name: "Dumbbell Flyes",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )

# workout2.exercises.create!(
#   user: user2,
#   name: "Dumbbell Flyes",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )


# workout2.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'chest')

# workout2.exercises.create!(
#   user: user2,
#   name: "Bench Press",
#   repetitions: 12,
#   sets: 3,
#   weight: 60
# )
# workout2.exercises.create!(
#   user: user2,
#   name: "Dumbbell Flyes",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )

# workout2.exercises.create!(
#   user: user2,
#   name: "Dumbbell Flyes",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )

# workout2.exercises.create!(
#   user: user2,
#   name: "Dumbbell Flyes",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )

# workout3 = Workout.create!(
#   title: "Glutes Workout",
#   description: "Work out your glutes",
#   user: user3
# )
# workout3.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'glutes')

# workout3.exercises.create!(
#   user: user3,
#   name: "Squats",
#   repetitions: 15,
#   sets: 4,
#   weight: 80
# )
# workout3.exercises.create!(
#   user: user3,
#   name: "Hip Thrusts",
#   repetitions: 12,
#   sets: 3,
#   weight: 40
# )
# workout3 = Workout.create!(
#   title: "Glutes Workout",
#   description: "Work out your glutes",
#   user: user3
# )
# workout3.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'glutes')

# workout3.exercises.create!(
#   user: user3,
#   name: "Squats",
#   repetitions: 15,
#   sets: 4,
#   weight: 80
# )
# workout3.exercises.create!(
#   user: user3,
#   name: "Hip Thrusts",
#   repetitions: 12,
#   sets: 3,
#   weight: 40
# )
# workout3.exercises.create!(
#   user: user3,
#   name: "Romenian Deadlift",
#   repetitions: 12,
#   sets: 3,
#   weight: 40
# )
# workout3 = Workout.create!(
#   title: "Glutes Workout",
#   description: "Work out your glutes",
#   user: user3
# )
# workout3.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'glutes')

# workout3.exercises.create!(
#   user: user3,
#   name: "Squats",
#   repetitions: 15,
#   sets: 4,
#   weight: 80
# )
# workout3.exercises.create!(
#   user: user3,
#   name: "Hip Thrusts",
#   repetitions: 12,
#   sets: 3,
#   weight: 40
# )
# workout3.exercises.create!(
#   user: user3,
#   name: "Hip Thrusts",
#   repetitions: 12,
#   sets: 3,
#   weight: 40
# )
# workout3.exercises.create!(
#   user: user3,
#   name: "Hip Thrusts",
#   repetitions: 12,
#   sets: 3,
#   weight: 40
# )
# workout4 = Workout.create!(
#   title: "Hamstrings Workout",
#   description: "Work out your hamstrings",
#   user: user1
# )

# workout4.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'hamstrings')

# workout4.exercises.create!(
#   user: user1,
#   name: "Romanian Deadlift",
#   repetitions: 10,
#   sets: 3,
#   weight: 60
# )
# workout4.exercises.create!(
#   user: user1,
#   name: "Leg Curls",
#   repetitions: 12,
#   sets: 3,
#   weight: 40
# )

# workout4 = Workout.create!(
#   title: "Hamstrings Workout",
#   description: "Work out your hamstrings",
#   user: user1
# )

# workout4.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'hamstrings')

# workout4.exercises.create!(
#   user: user1,
#   name: "Romanian Deadlift",
#   repetitions: 10,
#   sets: 3,
#   weight: 60
# )
# workout4.exercises.create!(
#   user: user1,
#   name: "Leg Curls",
#   repetitions: 12,
#   sets: 3,
#   weight: 40
# )
# workout3.exercises.create!(
#   user: user3,
#   name: "Squats",
#   repetitions: 15,
#   sets: 4,
#   weight: 80
# )

# workout4 = Workout.create!(
#   title: "Hamstrings Workout",
#   description: "Work out your hamstrings",
#   user: user1
# )

# workout4.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'hamstrings')

# workout4.exercises.create!(
#   user: user1,
#   name: "Romanian Deadlift",
#   repetitions: 10,
#   sets: 3,
#   weight: 60
# )
# workout4.exercises.create!(
#   user: user1,
#   name: "Leg Curls",
#   repetitions: 12,
#   sets: 3,
#   weight: 40
# )
# workout3.exercises.create!(
#   user: user3,
#   name: "Squats",
#   repetitions: 15,
#   sets: 4,
#   weight: 80
# )
# workout3.exercises.create!(
#   user: user3,
#   name: "Hip Thrusts",
#   repetitions: 12,
#   sets: 3,
#   weight: 40
# )
# workout5 = Workout.create!(
#   title: "Quads Workout",
#   description: "Work out your quads",
#   user: user2
# )
# workout5.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'quads')

# workout5.exercises.create!(
#   user: user2,
#   name: "Barbell Squats",
#   repetitions: 8,
#   sets: 4,
#   weight: 80
# )
# workout5.exercises.create!(
#   user: user2,
#   name: "Lunges",
#   repetitions: 12,
#   sets: 3,
#   weight: 20
# )
# workout5 = Workout.create!(
#   title: "Quads Workout",
#   description: "Work out your quads",
#   user: user2
# )
# workout5.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'quads')

# workout5.exercises.create!(
#   user: user2,
#   name: "Barbell Squats",
#   repetitions: 8,
#   sets: 4,
#   weight: 80
# )
# workout5.exercises.create!(
#   user: user2,
#   name: "Lunges",
#   repetitions: 12,
#   sets: 3,
#   weight: 20
# )
# workout5.exercises.create!(
#   user: user2,
#   name: "Barbell Squats",
#   repetitions: 8,
#   sets: 4,
#   weight: 80
# )

# workout5 = Workout.create!(
#   title: "Quads Workout",
#   description: "Work out your quads",
#   user: user2
# )
# workout5.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'quads')

# workout5.exercises.create!(
#   user: user2,
#   name: "Barbell Squats",
#   repetitions: 8,
#   sets: 4,
#   weight: 80
# )
# workout5.exercises.create!(
#   user: user2,
#   name: "Lunges",
#   repetitions: 12,
#   sets: 3,
#   weight: 20
# )
# workout5.exercises.create!(
#   user: user2,
#   name: "Barbell Squats",
#   repetitions: 8,
#   sets: 4,
#   weight: 80
# )
# workout5.exercises.create!(
#   user: user2,
#   name: "Lunges",
#   repetitions: 12,
#   sets: 3,
#   weight: 20
# )

# workout6 = Workout.create!(
#   title: "Biceps Workout",
#   description: "Work out your biceps",
#   user: user3
# )
# workout6.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'biceps')

# workout6.exercises.create!(
#   user: user3,
#   name: "Barbell Curls",
#   repetitions: 10,
#   sets: 3,
#   weight: 30
# )
# workout6.exercises.create!(
#   user: user3,
#   name: "Hammer Curls",
#   repetitions: 12,
#   sets: 3,
#   weight: 20
# )
# workout6 = Workout.create!(
#   title: "Biceps Workout",
#   description: "Work out your biceps",
#   user: user3
# )
# workout6.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'biceps')

# workout6.exercises.create!(
#   user: user3,
#   name: "Barbell Curls",
#   repetitions: 10,
#   sets: 3,
#   weight: 30
# )
# workout6.exercises.create!(
#   user: user3,
#   name: "Hammer Curls",
#   repetitions: 12,
#   sets: 3,
#   weight: 20
# )
# workout6.exercises.create!(
#   user: user3,
#   name: "Hammer Curls",
#   repetitions: 12,
#   sets: 3,
#   weight: 20
# )
# workout6 = Workout.create!(
#   title: "Biceps Workout",
#   description: "Work out your biceps",
#   user: user3
# )
# workout6.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'biceps')

# workout6.exercises.create!(
#   user: user3,
#   name: "Barbell Curls",
#   repetitions: 10,
#   sets: 3,
#   weight: 30
# )
# workout6.exercises.create!(
#   user: user3,
#   name: "Hammer Curls",
#   repetitions: 12,
#   sets: 3,
#   weight: 20
# )

# workout6.exercises.create!(
#   user: user3,
#   name: "Hammer Curls",
#   repetitions: 12,
#   sets: 3,
#   weight: 20
# )
# workout6.exercises.create!(
#   user: user3,
#   name: "Hammer Curls",
#   repetitions: 12,
#   sets: 3,
#   weight: 20
# )
# workout7 = Workout.create!(
#   title: "Triceps Workout",
#   description: "Work out your triceps",
#   user: user1
# )
# workout7.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'triceps')

# workout7.exercises.create!(
#   user: user1,
#   name: "Tricep Dips",
#   repetitions: 12,
#   sets: 3,
#   weight: 0
# )
# workout7.exercises.create!(
#   user: user1,
#   name: "Skull Crushers",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )
# workout7 = Workout.create!(
#   title: "Triceps Workout",
#   description: "Work out your triceps",
#   user: user1
# )
# workout7.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'triceps')

# workout7.exercises.create!(
#   user: user1,
#   name: "Tricep Dips",
#   repetitions: 12,
#   sets: 3,
#   weight: 0
# )
# workout7.exercises.create!(
#   user: user1,
#   name: "Skull Crushers",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )
# workout7.exercises.create!(
#   user: user1,
#   name: "Skull Crushers",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )
# workout7 = Workout.create!(
#   title: "Triceps Workout",
#   description: "Work out your triceps",
#   user: user1
# )
# workout7.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'triceps')

# workout7.exercises.create!(
#   user: user1,
#   name: "Tricep Dips",
#   repetitions: 12,
#   sets: 3,
#   weight: 0
# )
# workout7.exercises.create!(
#   user: user1,
#   name: "Skull Crushers",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )
# workout7.exercises.create!(
#   user: user1,
#   name: "Skull Crushers",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )
# workout7.exercises.create!(
#   user: user1,
#   name: "Skull Crushers",
#   repetitions: 10,
#   sets: 3,
#   weight: 20
# )

# workout8 = Workout.create!(
#   title: "Cardio Workout",
#   description: "Cardio exercises",
#   user: user2
# )
# workout8.workout_variants.create!(duration: 'short', is_default: true, muscle_group_name: 'cardio')
# workout8 = Workout.create!(
#   title: "Cardio Workout",
#   description: "Cardio exercises",
#   user: user2
# )
# workout8.workout_variants.create!(duration: 'medium', is_default: true, muscle_group_name: 'cardio')

# workout8 = Workout.create!(
#   title: "Cardio Workout",
#   description: "Cardio exercises",
#   user: user2
# )
# workout8.workout_variants.create!(duration: 'long', is_default: true, muscle_group_name: 'cardio')


# workout8.exercises.create!(
#   user: user2,
#   name: "Running",
#   repetitions: 0,
#   sets: 0,
#   weight: 0
# )
# workout8.exercises.create!(
#   user: user2,
#   name: "Cycling",
#   repetitions: 0,
#   sets: 0,
#   weight: 0
# )

puts "🌱 FINISHED SEEDING!!!!"
