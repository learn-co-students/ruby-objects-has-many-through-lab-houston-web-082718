class Patient

    attr_reader :name

    @@all = [] # The Patient class needs a class variable @@all that begins as an empty array.

    def self.all # The Patient class needs a class method .all that lists each patient in the class variable.
        @@all
    end

    def initialize(name) # A patient is instantiated with a name and be saved in the @@all array.
        @name = name

        @@all << self
    end

    # The Patient class needs an instance method, #new_appointment, that takes in an argument of a 
    # doctor and a date and creates a new appointment. The appointment should know that it belongs 
    # to the patient.
    def new_appointment(doctor_instance, date)
        Appointment.new(self, doctor_instance, date)
    end

    # The Patient class needs an instance method, #appointments, that iterates through the appointments 
    # array and returns appointments that belong to the patient.
    def appointments
        Appointment.all.select do |appointment_instance|
            appointment_instance.patient.name == @name
        end
    end

    # The Patient class needs an instance method, #doctors, that iterates over that patient's 
    # appointments and collects the doctor that belongs to each appointment.
    def doctors
        doctor_array = []
        Appointment.all.each do |appointment_instance|
            if appointment_instance.patient.name == @name
                doctor_array << appointment_instance.doctor
            end
        end
        doctor_array
    end

end






