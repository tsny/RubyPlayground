require 'Date'

class ToDoList
    attr_accessor :entries, :timeCreated, :timeLastModified

    def initialize
        puts "\n-----\nCreating new ToDo list... \n-----"
        @entries = Array.new
        @timeCreated = DateTime.now
        @timeLastModified = DateTime.now
    end

    def to_s
        "List created on #{ @timeCreated } and last modified on #{ @timeLastModified }"
    end

    def createEntry(name)
        newEntry = Entry.new(name)
        @entries.push(newEntry)
        return newEntry
    end

    class Entry
        attr_accessor :name, :content, :timeEntered, :timeModified, :timeCompleted, :flags

        def initialize(name: "New Entry", flags: {})
            @timeEntered = DateTime.now
            @name = name unless name.nil?
            puts "Created New Entry '#{ @name }' at #{ @timeEntered }"
        end

        module EntryFlags
            IMPORTANT = 1
            TIMESENSITIVE = 2
            RANDOM = 3
        end
    end
    private_constant :Entry

end


# TESTING

listTest = ToDoList.new

listTest.createEntry(name: "test entry")
listTest.createEntry(name: "second entry")
listTest.createEntry(name: "another entry")