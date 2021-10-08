# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Seeding..."

puts "Clearing Database..."
User.destroy_all
Quiz.destroy_all
Question.destroy_all
Attempt.destroy_all

puts "Database cleared!"

puts "Seeding Users..."
user_1_salt = BCrypt::Engine.generate_salt
user_1 = User.create!(name: "Colleen", password_digest: BCrypt::Engine.hash_secret('83RZ\.yHbeW%r8yd', user_1_salt))
user_2_salt = BCrypt::Engine.generate_salt
user_2 = User.create!(name: "Shantae", password_digest: BCrypt::Engine.hash_secret('83RZ\.yHbeW%r8yd', user_2_salt))
user_3_salt = BCrypt::Engine.generate_salt
user_3 = User.create!(name: "Penny", password_digest: BCrypt::Engine.hash_secret('83RZ\.yHbeW%r8yd', user_3_salt))
user_4_salt = BCrypt::Engine.generate_salt
user_4 = User.create!(name: "Winifred", password_digest: BCrypt::Engine.hash_secret('83RZ\.yHbeW%r8yd', user_4_salt))
user_5_salt = BCrypt::Engine.generate_salt
user_5 = User.create!(name: "George", password_digest: BCrypt::Engine.hash_secret('83RZ\.yHbeW%r8yd', user_5_salt))
users = [user_1, user_2, user_3, user_4, user_5]

puts "Users Seeded!"

puts "Seeding Quizzes..."
quiz_1 = Quiz.create!(name: "Computer Trivia Quiz 1")
quiz_2 = Quiz.create!(name: "Computer Trivia Quiz 2")
quiz_3 = Quiz.create!(name: "Computer Trivia Quiz 3")
quiz_4 = Quiz.create!(name: "Computer Trivia Quiz 4")
quiz_5 = Quiz.create!(name: "Computer Trivia Quiz 5")
quizzes = [quiz_1, quiz_2, quiz_3, quiz_4, quiz_5]

puts "Quizzes Seeded!"

puts "Seeding Questions..."
question_1 = Question.create!(
    prompt: "Which internet company began life as an online bookstore called 'Cadabra'?",
    answers: [
        "Amazon",
        "eBay",
        "Overstock",
        "Shopify"
    ],
    correct_index: 0,
    quiz: quiz_1
)

question_2 = Question.create!(
    prompt: "Nvidia's headquarters are based in which Silicon Valley city?",
    answers: [
        "Palo Alto",
        "Cupertino",
        "Santa Clara",
        "Mountain View"
    ],
    correct_index: 2,
    quiz: quiz_1
)

question_3 = Question.create!(
    prompt: "Which of these is the name for the failed key escrow device introduced by the National Security Agency in 1993?",
    answers: [
        "Enigma Machine",
        "Clipper Chip",
        "Skipjack",
        "Nautilus"
    ],
    correct_index: 1,
    quiz: quiz_1
)

question_4 = Question.create!(
    prompt: "Which one of these is not an official development name for a Ubuntu release?",
    answers: [
        "Trusty Tahr",
        "Utopic Unicorn",
        "Wily Werewolf",
        "Mystic Mansion"
    ],
    correct_index: 3,
    quiz: quiz_1
)

question_5 = Question.create!(
    prompt: "Which of these people was NOT a founder of Apple Inc?",
    answers: [
        "Steve Jobs",
        "Ronald Wayne",
        "Jonathan Ive",
        "Steve Wozniak"
    ],
    correct_index: 2,
    quiz: quiz_1
)

question_6 = Question.create!(
    prompt: "Which coding language was the #1 programming language in terms of usage on GitHub in 2015?",
    answers: [
        "C#",
        "Python",
        "JavaScript",
        "PHP"
    ],
    correct_index: 2,
    quiz: quiz_2
)

question_7 = Question.create!(
    prompt: "In CSS, which of these values CANNOT be used with the 'position' property?",
    answers: [
        "static",
        "center",
        "absolute",
        "relative"
    ],
    correct_index: 1,
    quiz: quiz_2
)

question_8 = Question.create!(
    prompt: "What does 'LCD' stand for?",
    answers: [
        "Language Control Design",
        "Last Common Difference",
        "Long Continuous Design",
        "Liquid Crystal Display"
    ],
    correct_index: 3,
    quiz: quiz_2
)

question_9 = Question.create!(
    prompt: "Which programming language was developed by Sun Microsystems in 1995?",
    answers: [
        "Python",
        "Java",
        "Solaris OS",
        "C++"
    ],
    correct_index: 1,
    quiz: quiz_2
)

question_10 = Question.create!(
    prompt: "What does RAID stand for?",
    answers: [
        "Redundant Array of Independent Disks",
        "Rapid Access for Indexed Devices",
        "Range of Applications with Identical Designs",
        "Randomized Abstract Identification Description"
    ],
    correct_index: 0,
    quiz: quiz_2
)

question_11 = Question.create!(
    prompt: "Moore's law originally stated that the number of transistors on a microprocessor chip would double every...",
    answers: [
        "Four Years",
        "Two Years",
        "Eight Years",
        "Year"
    ],
    correct_index: 3,
    quiz: quiz_3
)

question_12 = Question.create!(
    prompt: "What was the first commerically available computer processor?",
    answers: [
        "Intel 486SX",
        "TMS 1000",
        "Intel 4004",
        "AMD AM386"
    ],
    correct_index: 2,
    quiz: quiz_3
)

question_13 = Question.create!(
    prompt: "How many cores does the Intel i7-6950X have?",
    answers: [
        "10",
        "12",
        "8",
        "4"
    ],
    correct_index: 0,
    quiz: quiz_3
)

question_14 = Question.create!(
    prompt: "What does AD stand for in relation to Windows Operating Systems?",
    answers: [
        "Alternative Drive",
        "Active Directory",
        "Automated Database",
        "Active Department"
    ],
    correct_index: 1,
    quiz: quiz_3
)

question_15 = Question.create!(
    prompt: "Which operating system was released first?",
    answers: [
        "Windows",
        "Linux",
        "Mac OS",
        "OS/2"
    ],
    correct_index: 2,
    quiz: quiz_3
)

question_16 = Question.create!(
    prompt: "What five letter word is the motto of the IBM Computer company?",
    answers: [
        "Click",
        "Think",
        "Logic",
        "Pixel"
    ],
    correct_index: 1,
    quiz: quiz_4
)

question_17 = Question.create!(
    prompt: "What was the name given to Android 4.3?",
    answers: [
        "Lollipop",
        "Nutella",
        "Jelly Bean",
        "Froyo"
    ],
    correct_index: 2,
    quiz: quiz_4
)

question_18 = Question.create!(
    prompt: "On which day did the World Wide Web go online?",
    answers: [
        "December 20, 1990",
        "December 17, 1996",
        "November 12, 1990",
        "November 24, 1995"
    ],
    correct_index: 0,
    quiz: quiz_4
)

question_19 = Question.create!(
    prompt: "In programming, what do you call functions with the same name but different implementations?",
    answers: [
        "Overriding",
        "Abstracting",
        "Overloading",
        "Inheriting"
    ],
    correct_index: 2,
    quiz: quiz_4
)

question_20 = Question.create!(
    prompt: "What does the 'S'; in the RSA encryption algorithm stand for?",
    answers: [
        "Secure",
        "Schottky",
        "Stable",
        "Shamir"
    ],
    correct_index: 3,
    quiz: quiz_4
)

question_21 = Question.create!(
    prompt: "All of the following programs are classified as raster graphics editors EXCEPT:",
    answers: [
        "Paint.NET",
        "Inkscape",
        "GIMP",
        "Adobe Photoshop"
    ],
    correct_index: 1,
    quiz: quiz_5
)

question_22 = Question.create!(
    prompt: "In HTML, which non-standard tag used to be be used to make elements scroll across the viewport?",
    answers: [
        "<scroll></scroll>",
        "<move></move>",
        "<slide></slide>",
        "<marquee></marquee>"
    ],
    correct_index: 3,
    quiz: quiz_5
)

question_23 = Question.create!(
    prompt: ".at is the top-level domain for what country?",
    answers: [
        "Argentina",
        "Australia",
        "Angola",
        "Austria"
    ],
    correct_index: 3,
    quiz: quiz_5
)

question_24 = Question.create!(
    prompt: "The name of technology company HP stands for what?",
    answers: [
        "Howard Packmann",
        "Husker-Pollosk",
        "Hewlett-Packard",
        "Hellman-Pohl"
    ],
    correct_index: 2,
    quiz: quiz_5
)

question_25 = Question.create!(
    prompt: "The teapot often seen in many 3D modeling applications is called what?",
    answers: [
        "Pixar Teapot",
        "Utah Teapot",
        "3D Teapot",
        "Tennessee Teapot"
    ],
    correct_index: 1,
    quiz: quiz_5
)

puts "Questions Seeded!"

puts "Seeding Attempts..."
grades = [1, 2, 3, 4, 5]

15.times do
grade = grades.sample

Attempt.create!(
    number_correct: grade,
    passed?: grade > 3,
    quiz: quizzes.sample,
    user: users.sample
)
end
puts "Attempts Seeded!"

puts "Seeding Complete!"