class Project < ApplicationRecord
after_create :send_notification

    has_and_belongs_to_many :workers

# active record callbacks, tiene que ver con el ciclo de vida del active record

def send_notification
    puts "hello"
end

end 