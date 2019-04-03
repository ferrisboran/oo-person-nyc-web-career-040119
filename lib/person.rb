require 'pry'

class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

  def initialize(name, bank_account=25, happiness=8, *hygiene)#hygiene=8)
    @name = name
    @bank_account = bank_account
    @happiness = happiness
    @hygiene = 8
  end

  def happiness
    @happiness > 10 ? @happiness = 10 : @happiness < 0 ? @happiness = 0 : @happiness
  end

  def hygiene
    @hygiene > 10 ? @hygiene = 10 : @hygiene < 0 ? @hygiene = 0 : @hygiene
  end

  def hygiene=(smelliness)
    @hygiene = smelliness
  end

  def happy?
    self.happiness > 7 ? true : false
  end

  def clean?
    self.hygiene > 7 ? true : false
  end

  def get_paid(money)
    @bank_account += money
    "all about the benjamins"
  end

  def take_bath
    self.hygiene += 4
    "♪ Rub-a-dub just relaxing in the tub ♫"
  end

  def work_out
    self.hygiene -= 3
    self.happiness += 2
    "♪ another one bites the dust ♫"
  end

  def call_friend(friend)
    self.happiness += 3
    friend.happiness += 3
    "Hi #{friend.name}! It's #{@name}. How are you?"
  end

  def start_conversation(person, topic)
    case topic
    when "politics"
      self.happiness -= 2
      person.happiness -= 2
      "blah blah partisan blah lobbyist"
    when "weather"
      self.happiness += 1
      person.happiness += 1
      "blah blah sun blah rain"
    else
      "blah blah blah blah blah"
    end

  end

end
