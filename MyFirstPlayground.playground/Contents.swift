import UIKit

//Declare a book with a title, author, page count, rating (a Double) and whether it’s finished. Choose let or var for each on purpose.
//Try pageCount = "three hundred", then let x = pageCount / rating. Read both errors, then fix the second one with a conversion.
//Write a function summary you call as summary(of: "Dune", by: "Frank Herbert", pages: 412), returning "Dune by Frank Herbert, 412 pages".
//Write readingTime(pages:pagesPerHour:) returning hours as a Double, with pagesPerHour defaulting to 40. Call it with and without the second argument, and check the result carefully.
//Compare "café".count, "👨‍👩‍👧".count and "👨‍👩‍👧".utf16.count. Which one matches what JS .length would give?


let title: String = "My Book"
let author: String = "Brooklyn"
let pageCount: Int = 500
let rating: Double = 4
var finished: Bool = false

let x = Double(pageCount) / rating

func summary(of book: String, by author: String, pages pageCount: Int) -> String {
    return "\(book) by \(author), \(pageCount) pages"
}

let mySummary = summary(of: title, by: author, pages: pageCount)

func readingTime(pages: Int, pagesPerHour: Int = 40) -> Double {
    return Double(pages) / Double(pagesPerHour)
}

let myReadingTime = readingTime(pages: pageCount)

"café".count // This matches Javascript's `.length`
"👨‍👩‍👧".count
"👨‍👩‍👧".utf16.count
