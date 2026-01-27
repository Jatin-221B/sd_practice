class AddressBook
  def initialize
    @contacts = []
  end

  def add_contact
    puts "Enter name: "
    name = gets.chomp

    puts "Enter phone: "
    phone = gets.chomp

    puts "Enter email: "
    email = gets.chomp

    @contacts << { name: name, phone: phone, email: email }
    puts "Contact added successfully."
  end

  def view_contacts
    if @contacts.empty?
      puts "No contacts found."
      return
    end

    @contacts.each_with_index do |contact, index|
      puts "Contact #{index + 1}:"
      puts "  Name: #{contact[:name]}"
      puts "  Phone: #{contact[:phone]}"
      puts "  Email: #{contact[:email]}"
      puts "-" * 20
    end
  end

  def search_contact
    print "Enter name to search: "
    query = gets.chomp.downcase

    results = @contacts.select { |c| c[:name].downcase.include?(query) }

    if results.empty?
      puts "No matching contacts found."
    else
      results.each do |contact|
        puts "Name: #{contact[:name]}, Phone: #{contact[:phone]}, Email: #{contact[:email]}"
      end
    end
  end

  def delete_contact
    print "Enter name to delete: "
    name = gets.chomp.downcase

    before_size = @contacts.size
    @contacts.reject! { |c| c[:name].downcase == name }

    if @contacts.size < before_size
      puts "Contact deleted successfully."
    else
      puts "Contact not found."
    end
  end

  def menu
    loop do
      puts "\nAddress Book Menu"
      puts "1. Add Contact"
      puts "2. View Contacts"
      puts "3. Search Contact"
      puts "4. Delete Contact"
      puts "5. Exit"
      print "Choose an option: "

      choice = gets.chomp

      case choice
      when "1"
        add_contact
      when "2"
        view_contacts
      when "3"
        search_contact
      when "4"
        delete_contact
      when "5"
        puts "Exiting..."
        break
      else
        puts "Invalid option. Try again."
      end
    end
  end
end

book = AddressBook.new
book.menu
