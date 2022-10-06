require_relative 'Document'

class Journal < Document
   @issueNumber_248
   @monthIssue_248

   def initialize(id_248, nxb_248, number_248, issueNumber_248, monthIssue_248)
      super(id_248, nxb_248, number_248)
      @issueNumber_248 = issueNumber_248
      @monthIssue_248 = monthIssue_248
   end

   attr_accessor :issueNumber_248, :monthIssue_248

   def showInformation
      puts "Journal { IssuaNumber: #{@issueNumber_248}} - MonthIssue: #{@monthIssue_248} - id:
      #{@id_248} - NXB: #{@nxb_248} Number: #{@number_248}"
   end
end