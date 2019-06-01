# your code goes here
class Person

    attr_reader :name
    attr_accessor :bank_account

    def initialize (name)
        @name = name
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
    end

    def happiness=(value)
        if value >=10
            @happiness = 10
        elsif value <=0
        @happiness = 0
        else
            @happiness = value
        end
    end

    def happiness
        @happiness
    end

    def hygiene=(value)
        if value >=10
            @hygiene = 10
        elsif value <=0
            @hygiene = 0
        else
            @hygiene = value
        end
    end

    def hygiene
        @hygiene
    end

    def clean?
        if self.hygiene > 7
            true
        else
            false
        end
    end

    def happy?
        if self.happiness > 7
            true
        else
            false
        end
    end

    def get_paid(salary)
        current_balance = self.bank_account
        self.bank_account = current_balance + salary
        output =  "all about the benjamins"
    end

    def take_bath
        self.hygiene = self.hygiene + 4
        output = "♪ Rub-a-dub just relaxing in the tub ♫"
    end
    
    def work_out
        self.happiness = self.happiness + 2
        self.hygiene = self.hygiene - 3
        output = "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness += 3
        friend.happiness += 3
        output = "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation (person, topic)
        if topic == "politics"
            current_happiness = self.happiness
            self.happiness = current_happiness - 2
            person_happiness = person.happiness
            person.happiness = person_happiness - 2
            output = "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness += 1
            person.happiness += 1
            output = "blah blah sun blah rain"
        else 
            output = "blah blah blah blah blah"
        end
    end
end
