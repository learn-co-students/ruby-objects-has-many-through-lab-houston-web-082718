class Doctor

    attr_reader :name

    @@all = [] # The Doctor class needs a class variable @@all that begins as an empty array.

    def self.all # The Doctor class needs a class method .all that lists each doctor in the class variable.
        @@all
    end

    def initialize(name) # A doctor should be initialized with a name and be saved in the @@all array.
        @name = name

        @@all << self
    end

    # The Doctor class needs an instance method, #new_appointment, that takes in a date and 
    # an instance of the Patient class and creates a new appointment. That appointment should 
    # know that it belongs to the doctor
    def new_appointment(patient_instance, date)
        Appointment.new(patient_instance, self, date)
    end

    # The Doctor class needs an instance method, #appointments, that iterates through all appointments 
    # and finds those belonging to this doctor.
    def appointments
        Appointment.all.select do |appointment_instance|
            appointment_instance.doctor.name == @name
        end
    end

    # The Doctor class needs an instance method, #patients, that iterates over that doctor's 
    # appointments and collects the patient that belongs to each appointment.
    def patients
        patient_array = []
        Appointment.all.each do |appointment_instance|
            if appointment_instance.doctor.name == @name
                patient_array << appointment_instance.patient
            end
        end
        patient_array
    end


end






