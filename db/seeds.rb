# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# Adding specialization
# specializations = [
#   { name: 'Cardiology', description: 'Deals with heart-related diseases.' },
#   { name: 'Dermatology', description: 'Focuses on skin disorders and treatments.' },
#   { name: 'Neurology', description: 'Concerns disorders of the nervous system.' },
#   { name: 'Orthopedics', description: 'Deals with musculoskeletal system disorders.' },
#   { name: 'Oncology', description: 'Focuses on cancer treatment and research.' },
#   { name: 'Gastroenterology', description: 'Deals with digestive system diseases.' },
#   { name: 'Endocrinology', description: 'Focuses on hormones and metabolic disorders.' },
#   { name: 'Ophthalmology', description: 'Deals with eye diseases and vision care.' },
#   { name: 'Pediatrics', description: 'Focuses on medical care for children.' },
#   { name: 'Psychiatry', description: 'Deals with mental health and disorders.' },
#   { name: 'Urology', description: 'Focuses on urinary tract and male reproductive system.' },
#   { name: 'Rheumatology', description: 'Deals with autoimmune and musculoskeletal disorders.' },
#   { name: 'Hematology', description: 'Focuses on blood-related diseases.' },
#   { name: 'Nephrology', description: 'Deals with kidney-related diseases and disorders.' },
#   { name: 'Pulmonology', description: 'Focuses on respiratory system diseases.' },
#   { name: 'Otolaryngology', description: 'Deals with ear, nose, and throat disorders.' },
#   { name: 'Infectious Diseases', description: 'Focuses on infectious and communicable diseases.' },
#   { name: 'Allergy & Immunology', description: 'Deals with allergies and immune system disorders.' },
#   { name: 'Physical Medicine & Rehabilitation', description: 'Focuses on rehabilitation and physical therapy.' },
#   { name: 'Geriatrics', description: 'Deals with health care for elderly individuals.' },
#   { name: 'Hepatology', description: 'Deals with liver diseases and disorders.' },
#   { name: 'Andrology', description: 'Focuses on male reproductive health.' },
#   { name: 'Podiatry', description: 'Deals with foot and ankle disorders.' },
#   { name: 'Sleep Medicine', description: 'Focuses on sleep disorders and treatments.' },
#   { name: 'Sports Medicine', description: 'Deals with sports-related injuries and conditions.' },
#   { name: 'Clinical Genetics', description: 'Focuses on genetic disorders and inheritance.' },
# ]

# specializations.each do |spec|
#   Specialization.create!(name: spec[:name], description: spec[:description])
# end

# adding slots for half hour each
# time = "00:00"

# for inserting the slots
# while time < "23:30"
#   time1 = (Time.parse(time) + 30.minutes).strftime("%H:%M")
#   Slot.create!(start_time: time, end_time: time1)
#   time = time1
# end