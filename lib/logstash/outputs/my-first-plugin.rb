require "logstash/outputs/base"

class LogStash::Outputs::MyFirstPlugin < LogStash::Outputs::Base
  config_name "my-first-plugin-x123"

  config :param1, validate: :string, require: true
  config :param2, validate: :string, require: true

  def register
    puts "in register"
    p [:param1, @param1, param2: @param2]
  end # def register

  def receive(event)
    puts "in receive"
    p [:param1, @param1, param2: @param2]
    p [event, event]
    return "Event received"
  end
end
