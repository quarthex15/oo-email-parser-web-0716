# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'

class EmailParser
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end


  def parse
    #binding.pry
    
    if self.emails.include?(", ")
      parsed_emails = self.emails.tr(",","")
      parsed_emails = parsed_emails.split(" ")
    elsif self.emails.include?(" ")
      parsed_emails = self.emails.split(" ")
    else self.emails.include?(",")
      emails = self.emails.split(",")
      parsed_emails = emails.collect do |email|
        binding.pry
        email = email[0..(email.length-2)]
      end
    end
    #binding.pry
    unique_emails = parsed_emails.uniq
  end
end

#binding.pry