# your code goes here
class Person
    attr_reader :name
    attr_accessor :bank_account, :happiness, :hygiene

    def initialize(name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(points)
        @happiness = limit_points(points)
    end

    def hygiene=(points)
        @hygiene = limit_points(points)
    end

    def clean?
        @hygiene > 7
    end

    def happy?
        @happiness > 7
    end

    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end 

    def take_bath
        self.hygiene = (@hygiene + 4)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.happiness = (@happiness + 2)
        self.hygiene = (@hygiene - 3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness = (@happiness + 3)
        friend.happiness = (friend.happiness + 3)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end 

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness = (@happiness - 2)
            person.happiness = (person.happiness - 2)
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness = (@happiness + 1)
            person.happiness = (person.happiness + 1)
            return "blah blah sun blah rain"
        end
        "blah blah blah blah blah"
    end 

    def limit_points(points)
        if points < 0
            return 0
        elsif points > 10
            return 10
        end
        points
    end
end