load "Books.rb"
load 'Journal.rb'
load 'Newspaper.rb'
load 'ManagerDocument.rb'
load 'Document.rb'

class Main
   managerDocument_248 = MangerDocument.new

   while(true)
      puts "------- Manager document------"
      puts "1. To insert document "
      puts "Enter 2: To search document by category: "
      puts "Enter 3: To show information documents"
      puts "Enter 4: To remove document by id"
      puts "Enter 5: To exit:"

      print "----Choose case----:  "
      choose_248 = gets.to_i
      case choose_248
         when 1
            puts "Enter a: to insert Book"
            puts "Enter b: to insert Newspaper"
            puts "Enter c: to insert Journal"
            print "----Choose case----:  "
            chooseNumber_248 = gets.to_i
            case chooseNumber_248
               when 1
                  puts "Enter ID: "
                  id_248 = gets.to_i
                  puts "Enter nxb:"
                  nxb_248 = gets.to_s
                  puts "Enter number: "
                  number_248 = gets.to_i
                  puts "Enter author: "
                  author_248 = gets.to_s
                  puts "Enter page number: "
                  numerPage_248 = gets.to_i
                  document_248 = Books.new(id_248, nxb_248, number_248, author_248, numerPage_248)
                  managerDocument_248.addDocument(document_248)

               when 2
                  puts "Enter ID: "
                  id_248 = gets.to_i
                  puts "Enter nxb:"
                  nxb_248 = gets.to_s
                  puts "Enter number: "
                  number_248 = gets.to_i
                  puts "Enter Day issue: "
                  dayIssue_248 = gets.to_i
                  
                  newspaper_248 = Newspaper.new(id_248, nxb_248, number_248, dayIssue_248)
                  managerDocument_248.addDocument(newspaper_248)

               when 3
                  puts "Enter ID: "
                  id_248 = gets.to_i
                  puts "Enter nxb:"
                  nxb_248 = gets.to_s
                  puts "Enter number: "
                  number_248 = gets.to_i
                  puts "Enter issue number : "
                  issueNumber_248 =  gets.to_i
                  puts "Enter issue month : "
                  issueMonth_248 =  gets.to_i

                  journal_248 = Journal.new(id_248, nxb_248, number_248, issueNumber_248, issueMonth_248)
                  managerDocument_248.addDocument(journal_248)
            end
         when 2
            puts "Enter a to search book"
            puts "Enter b to search newspaper"
            puts "Enter a to search journal"
            choise_248 = gets.chomp

            # logic something
            case choise_248
               when "a"
                  managerDocument_248.searchBook
               when "b"
                  managerDocument_248.searchNewpaper
               when "c"
                  managerDocument_248.searchJournal
            end

         when 3
            puts "Show list document"
            managerDocument_248.showListDocuments
         when 4
            print "Delete document by id: "
            id_248 = gets.to_i
            managerDocument_248.deleteById(id_248)
         when 5
            puts " == 5. Thoát khỏi công việc == " 
            puts "Hẹn gặp lại!" 
      end
   end
end