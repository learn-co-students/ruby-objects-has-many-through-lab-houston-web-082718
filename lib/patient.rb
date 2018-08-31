require 'pry'

class Patient

    attr_reader :name
    attr_accessor :doctor, :appointment

    @@all = []

    def initialize (name)
        @name = name

        @@all << self
    end

    def new_appointment(doctor, date)
        appt = Appointment.new(self, doctor, date)

        # binding.pry
    end

    def self.all
        @@all
    end

    def doctors

        self.appointments.map do |app|
            app.doctor
        end
        
    end

    def appointments
        Appointment.all.select do |app|
            app.patient = self
        end
    end 

end

