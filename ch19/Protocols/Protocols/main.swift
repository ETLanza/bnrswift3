//
//  main.swift
//  Protocols
//
//  Created by Eric Lanza on 6/26/18.
//  Copyright © 2018 ETLanza. All rights reserved.
//

import Foundation

protocol TabularDataSource {
    var numberOfRows: Int { get }
    var numberOfColumns: Int { get }
    
    func label(forColumn column: Int) -> String
    
    func itemFor(row: Int, column: Int) -> String
}

func computeWidths(for dataSource: TabularDataSource) -> [Int] {
    var columnWidths = [Int]()
    
    for i in 0 ..< dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: i)
        columnWidths.append(columnLabel.count)
    }
    
    for i in 0 ..< dataSource.numberOfRows {
        for j in 0 ..< dataSource.numberOfColumns {
            let item = dataSource.itemFor(row: i, column: j)
            if columnWidths[j] < item.count {
                columnWidths[j] = item.count
            }
        }
    }
    
    return columnWidths
}

func printTable(_ dataSource: TabularDataSource & CustomStringConvertible) {
    print("Table: \(dataSource.description)")
    var firstRow = "|"
    var columnWidths = computeWidths(for: dataSource)
    
    for i in 0 ..< dataSource.numberOfColumns {
        let columnLabel = dataSource.label(forColumn: i)
        let paddingNeeded = columnWidths[i] - columnLabel.count
        let padding = repeatElement(" ", count: paddingNeeded).joined()
        let columnHeader = " \(padding)\(columnLabel) |"
        firstRow += columnHeader
    }
    
    print(firstRow)
    
    for i in 0 ..< dataSource.numberOfRows {
        var out = "|"
        for j in 0 ..< dataSource.numberOfColumns{
            let item = dataSource.itemFor(row: i, column: j)
            let paddingNeeded = max(columnWidths[j] - item.count, 0)
            let padding = repeatElement(" ", count: paddingNeeded).joined(separator: "")
            out += " \(padding)\(item) |"
        }
        // Done - print it!
        print(out)
    }
}

struct Person {
    let name: String
    let age: Int
    let yearsOfExperience: Int
}

struct Department: TabularDataSource, CustomStringConvertible {
    var description: String {
        return "Department (\(name))"
    }
    
    var numberOfRows: Int {
        return people.count
    }
    
    var numberOfColumns: Int {
        return 3
    }
    
    func label(forColumn column: Int) -> String {
        switch column {
        case 0: return "Employee Name"
        case 1: return "Age"
        case 2: return "Years of Experience"
        default: fatalError("Invalid column!")
        }
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let person = people[row]
        switch column {
        case 0: return person.name
        case 1: return String(person.age)
        case 2: return String(person.yearsOfExperience)
        default: fatalError("Invalid column!")
        }
    }
    
    let name: String
    var people = [Person]()
    
    init(name:String){
        self.name = name
    }
    
    mutating func add(_ person: Person) {
        people.append(person)
    }
}

var department = Department(name: "Engineering")
department.add(Person(name: "Joe", age: 30, yearsOfExperience: 6))
department.add(Person(name: "Karen", age: 4000, yearsOfExperience: 18))
department.add(Person(name: "Fred", age: 50, yearsOfExperience: 20))

printTable(department)


struct Book {
    let title: String
    let author: String
    let averageRating: Double
}

struct BookCollection: TabularDataSource, CustomStringConvertible {
    let name: String
    var books = [Book]()
    var numberOfRows: Int { return books.count }
    var numberOfColumns: Int { return 3 }
    var description: String { return "Book Collection (\(name))" }
    
    init(name: String) {
        self.name = name
    }
    
    mutating func add(_ book: Book) {
        books.append(book)
    }
    
    func label(forColumn column: Int) -> String {
        switch column {
        case 0: return "Title"
        case 1: return "Author"
        case 2: return "Average Rating"
        default: fatalError("Invalid Column!")
        }
    }
    
    func itemFor(row: Int, column: Int) -> String {
        let book = books[row]
        switch column {
        case 0: return book.title
        case 1: return book.author
        case 2: return String(book.averageRating)
        default: fatalError("Invalid column!")
        }
    }
}

var bookCollection = BookCollection(name: "Lord Of The Rings Trilogy")
bookCollection.add(Book(title: "The Fellowship of The Ring", author: "J.R.R, Tolkien", averageRating: 4.7))
bookCollection.add(Book(title: "The Two Towers", author: "J.R.R, Tolkien", averageRating: 4.7))
bookCollection.add(Book(title: "Return of The King", author: "J.R.R, Tolkien", averageRating: 4.7))

printTable(bookCollection)



















