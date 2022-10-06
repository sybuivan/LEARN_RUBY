require_relative 'Document'

class Newspaper < Document

   @dayIssue_248

   def initialize(id_248, nxb_248, number_248, dayIssue_248)
      super(id_248, nxb_248, number_248)
      @dayIssue_248 = dayIssue_248
   end

   attr_accessor :dayIssue_248

   def showInformation
      puts "Newspaper { DayIssue: #{@dayIssue_248} - id:
      #{@id_248} - NXB: #{@nxb_248} Number: #{@number_248}}"
   end
end