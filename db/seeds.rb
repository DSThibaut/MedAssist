User.destroy_all
Medicament.destroy_all
MedicalCenter.destroy_all
MedicalCare.destroy_all
Appointment.destroy_all
MedicalCareMedicament.destroy_all

User.create!(email: "test@test.com", first_name: "Jean", last_name: "Durant", password: "password")
puts "#{User.count} Users crées"

Coenzyme_Q10 = Medicament.create!(name: "Coenzyme Q10", unit: "Vitamine", stock: 38)
Quercetine = Medicament.create!(name: "Quercétine", unit: "Vitamine", stock: 42)
Creatine = Medicament.create!(name: "Créatine", unit: "Complément", stock: 36)
Vitamine_D = Medicament.create!(name: "Vitamine D", unit: "Vitamine", stock: 46)
Calcium = Medicament.create!(name: "Calcium", unit: "Complément", stock: 38)
Haelan = Medicament.create!(name: "Haelan", unit: "Complément", stock: 24)
Protandim = Medicament.create!(name: "Protandim", unit: "Complément", stock: 56)
Tegretol = Medicament.create!(name: "Tégrétol", unit: "Comprimé", stock: 28)
Dantrium = Medicament.create!(name: "Dantrium", unit: "Comprimé", stock: 32)
Lioresal = Medicament.create!(name: "Liorésal", unit: "Comprimé", stock: 56)
Mexitil = Medicament.create!(name: "Mexitil", unit: "Gellule", stock: 38)
Lozartan = Medicament.create!(name: "Lozartan", unit: "Comprimé", stock: 42)
Deflazacort = Medicament.create!(name: "Deflazacort", unit: "Comprimé", stock: 54)
Dilantin = Medicament.create!(name: "Dilantin", unit: "Comprimé", stock: 48)
puts "#{Medicament.count} Medicaments crées"

MedicalCenter.create!(name: "BIOGROUP - Lyon Terreaux", address: "19 Rue Paul Chanavard, 69001 Lyon", phone_number: "06-45-32-56-89")
MedicalCenter.create!(name: "Eurofins CBM 69 - Croix Rousse", address: "4 Place de la Croix-Rousse, 69004 Lyon", phone_number: "07-12-00-56-83")
MedicalCenter.create!(name: "Centre Expert du Mouvement", address: "84 Quai Joseph Gillet, 69004 Lyon", phone_number: "06-45-45-38-88")
MedicalCenter.create!(name: "Hôpital de la Croix-Rousse", address: "103 Gd Rue de la Croix-Rousse, 69004 Lyon", phone_number: "04-33-90-91-12")
MedicalCenter.create!(name: "Hôpital Edouard Herriot", address: "5 Place d'Arsonval, 69003 Lyon", phone_number: "04-34-32-87-15")
MedicalCenter.create!(name: "Kinésia - Centre de Kinésithérapie", address: "28 Avenue Rockfeller, 69008 Lyon", phone_number: "06-34-32-87-15")
MedicalCenter.create!(name: "Dr. MALEYSSON, Kinésithérapeute", address: "9 Rue Saint-Hippolyte, 69008 Lyon", phone_number: "04-34-54-76-76")
MedicalCenter.create!(name: "Dr. CRELIN - Kinésithérapeute", address: "46 Avenue Condorcet, 69100 Villeurbanne", phone_number: "04-66-94-81-31")
MedicalCenter.create!(name: "Hôpital Pierre Wertheimer", address: "59 Boulevard Pinel, 69500 Bron", phone_number: "04-55-65-77-80")
puts "#{MedicalCenter.count} MedicalCenter crées"

MedicalCare.create!(title: "Gabriel Dupont - DMD", description: "Dystrophie musculaire de Duchenne", user_id: 1, start_date: "2023-06-02", end_date: "2023-09-02")
MedicalCare.create!(title: "Jean Durand - MDC", description: "Maladie de Charcot", user_id: 1, start_date: "2023-06-10", end_date: "2024-11-10")
puts "#{MedicalCare.count} MedicalCare crées"

MedicalCareMedicament.create!(medical_care_id: 1, medicament: Deflazacort, dose: 6)
MedicalCareMedicament.create!(medical_care_id: 1, medicament: Mexitil, dose: 3)
MedicalCareMedicament.create!(medical_care_id: 1, medicament: Protandim, dose: 9)
MedicalCareMedicament.create!(medical_care_id: 1, medicament: Quercetine, dose: 6)
MedicalCareMedicament.create!(medical_care_id: 1, medicament: Tegretol, dose: 3)

MedicalCareMedicament.create!(medical_care_id: 2, medicament: Lozartan, dose: 3)
MedicalCareMedicament.create!(medical_care_id: 2, medicament: Creatine, dose: 9)
MedicalCareMedicament.create!(medical_care_id: 2, medicament: Coenzyme_Q10, dose: 3)
MedicalCareMedicament.create!(medical_care_id: 2, medicament: Calcium, dose: 3)
MedicalCareMedicament.create!(medical_care_id: 2, medicament: Dantrium, dose: 6)
MedicalCareMedicament.create!(medical_care_id: 2, medicament: Haelan, dose: 9)
MedicalCareMedicament.create!(medical_care_id: 2, medicament: Dilantin, dose: 6)
puts "#{MedicalCareMedicament.count} MedicalCareMedicament crées"

puts "Finish"
