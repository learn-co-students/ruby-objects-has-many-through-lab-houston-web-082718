class Appointment

    attr_reader :date, :patient, :doctor

    @@all = [] # The Appointment class needs a class variable @@all that begins as an empty array.

    def self.all # The Appointment class needs a class method .all that lists each appointment in the class variable.
        @@all
    end

    # An appointment should be initialized with a date (as a string, like "Monday, August 1st"), a 
    # patient, and a doctor. The appointment should be saved in the @@all array.
    def initialize(patient_instance, doctor_instance, date)
        @date = date
        @patient = patient_instance
        @doctor = doctor_instance

        @@all << self
    end

end



