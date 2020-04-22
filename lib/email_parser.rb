# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
  attr_accessor :emails
  def initialize(emails)
    @emails = emails
  end
  def parse
    parsed_emails = @emails.split(/[, ]/)
    unique_emails = [];
    parsed_emails.each {|email| unique_emails << email if !unique_emails.include?(email)}
    unique_emails.each {|email| unique_emails.delete(email) if email == ""}
    unique_emails
  end
end
