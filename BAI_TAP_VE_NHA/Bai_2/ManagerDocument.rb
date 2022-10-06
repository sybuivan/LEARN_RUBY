class MangerDocument
   $listDocuments_248 = []

   def initialize
   end
   def addDocument (document_248)
      $listDocuments_248 << document_248
   end

   def showListDocuments
      $listDocuments_248.each do |document|
         puts document.showInformation
      end
   end

   # create function search typeof 
   def searchBook
      $listDocuments_248.each do |document|
         if document.instance_of? Books
            document.showInformation
         end
      end
   end
   def searchNewpaper
      $listDocuments_248.each do |document|
         if document.instance_of? Newspaper
            document.showInformation
         end
      end
   end
   # 
   def searchJournal
      $listDocuments_248.each do |document|
         if document.instance_of? Journal
            document.showInformation
         end
      end
   end

   # create function delete document by id

   def deleteById(id_248)
      $listDocuments_248.each do |document|
         if document.id_248 == id_248
            $listDocuments_248.delete_if {|document| document.id_248 == id_248}
            puts "====Deleted #{document.id_248} successfully.====="
         else
            puts "Not found document with id"
         end
      end
   end

end