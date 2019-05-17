
class Patient

  @@all_patients = []

    attr_reader :name

      def initialize(name)
        @name = name
        @@all_patients << self
      end

      def new_appointment(doctor,date)
        new_appointment = Appointment.new(date,self,doctor)
      end

      def appointments
        Appointment.all.select do |appointments|
          appointments.patient == self
        end
      end

      def doctors
        self.appointments.collect do |appointment|
          appointment.doctor
        end
      end


      def self.all
        @@all_patients
      end

end
