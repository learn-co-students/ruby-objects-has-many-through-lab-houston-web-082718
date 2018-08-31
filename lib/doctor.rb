require 'pry'

class Doctor

    attr_reader :name

    @@all = []

    def initialize (name)
        @name = name
        

        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment (patient, date)
        appt = Appointment.new(patient, self, date)
    end

    def appointments
        Appointment.all.select do |appt|
           appt.doctor == self  
        end 
        
    end

    def patients
        self.appointments.map do |app|
            # binding.pry
            app.patient
        end 
    end
end