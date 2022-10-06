require_relative 'Document'

class Books < Document
   @author_248
   @numerPage_248

   def initialize(id_248, nxb_248, number_248, author_248, numerPage_248)
      super(id_248, nxb_248, number_248)
      @author_248 = author_248
      @numerPage_248 = numerPage_248
   end

   attr_accessor :author_248, :numerPage_248

   def showInformation
      puts "Books { Author: #{@author_248} - NumerPage: #{@numerPage_248} - id: #{@id_248} - NXB: #{@nxb_248} Number: #{@number_248}}"
   end
end