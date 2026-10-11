import UIKit

//Write let input = "412" and let pages = Int(input). Option-click pages to see its type. Try pages * 2, read the error, then fix it with if let.
//Write parsePages(_ text: String) -> Int?, which returns nil for anything that isn’t a positive number. Try it with "412", "abc", "-5" and "".
//Given let ratings = ["Dune": 4.5, "Emma": 3.0], write ratingLabel(for:) using guard let. It returns "Dune: 4.5 stars" or "Nope: not rated". Then write a one-line version using ??.
//Given let favorites: [String] = [], what are the type and value of favorites.first?.uppercased()? Predict before you run it.
//Write let crash = ratings["Nope"]!, run it, look at what happens, then delete it.

let input = "412"
let pages = Int(input)
if let pages { // why do we have to declare "let" again?
    pages * 2
}

func parsePages(_ text: String) -> Int? {
//    guard let pages = Int(text) else { return nil }
//    guard pages > 0 else { return nil }
//    return pages
    
    guard let pages = Int(text), pages > 0 else { return nil }
    return pages
}

parsePages("123")
parsePages("-123")
parsePages("asd")
parsePages("")

let ratings = ["Dune": 4.5, "Emma": 3.0]

func ratingLabel(for book: String) -> String {
    guard let rating = ratings[book] else { return "\(book): not rated" }
    return "\(book): \(rating) stars"
}

ratingLabel(for: "Dune")

func ratingLabelV2(for book: String) -> String {
    return "\(book): \(ratings[book] ?? 0) stars"
}

ratingLabelV2(for: "Nope")

let favorites: [String] = [] // nil
favorites.first?.uppercased()
