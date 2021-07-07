require "pry"

class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end

    def happiness=(num)
        if num < 0
            @happiness = 0
        elsif num > 10
            @happiness = 10
        else
            @happiness = num
        end
    end

    def hygiene=(num)
        if num < 0
            @hygiene = 0
        elsif num > 10
            @hygiene = 10
        else
            
            @hygiene = num
        end
    end

    def happy?
        @happiness > 7
    end

    def clean?
        @hygiene > 7
    end

    def get_paid(salary)
        @bank_account += salary
        'all about the benjamins'
    end

    def take_bath
        self.hygiene=(@hygiene + 4)
        '♪ Rub-a-dub just relaxing in the tub ♫'
    end

    def work_out
        self.happiness=(@happiness + 2)
        self.hygiene=(@hygiene-3)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(@happiness + 3)
        friend.happiness=(friend.happiness + 3)
        "Hi #{friend.name}! It's #{@name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(@happiness - 2)
            person.happiness=(person.happiness - 2)
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness + 1)
            person.happiness=(person.happiness + 1)
            "blah blah sun blah rain"
        else
            "blah blah blah blah blah"
        end
    end
end
