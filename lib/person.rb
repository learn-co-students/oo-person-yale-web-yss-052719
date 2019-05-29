class Person

    attr_reader :name
    # :happiness
    attr_writer :bank_account
    attr_accessor :happiness, :hygiene
    
    def initialize(name, happiness = 8, hygiene = 8, fund = 25)
        @name = name
        @happiness = happiness
        @hygiene = hygiene
        @fund = fund
    end

    def bank_account
        @fund
        # @fund += @salary
    end

    def happiness
        if @happiness > 10
            @happiness = 10
        elsif @happiness < 0
            @happiness = 0
        end
        @happiness
    end

    def hygiene
        if @hygiene > 10
            10
        elsif @hygiene < 0
            0
        else
            @hygiene
        end 
    end

    def happy?
        if self.happiness > 7 
            return true
        else
            return false
        end
    end

    def clean?
        if self.hygiene > 7 
            return true
        else
            return false
        end
    end

    def get_paid(salary)
        # @salary = salary
        @fund += salary
        return "all about the benjamins"
        # @fund
    end

    def take_bath
        # @hygiene += 4
        self.hygiene=(@hygiene += 4)
        if @hygiene > 10
            @hygiene = 10
        end
        return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        self.hygiene=(@hygiene -= 3)
        if @hygiene < 0
            @hygiene = 0
        end
        self.happiness=(@happiness += 2)
        if @happiness > 10
            @happiness = 10
        end
        return "♪ another one bites the dust ♫"
    end
    
    def call_friend(friend)       
        self.happiness=(@happiness += 3)
        friend.happiness += 3
        return  "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(friend, topic)
        if topic == "politics"
            self.happiness=(@happiness -= 2)
            friend.happiness -= 2
            return "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            self.happiness=(@happiness += 1)
            friend.happiness += 1
            return "blah blah sun blah rain"
        else
            return "blah blah blah blah blah"
        end

    end


end
