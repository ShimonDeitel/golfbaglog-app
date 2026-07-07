import Foundation

struct SubLogEntry: Identifiable, Codable, Equatable {
    var id: UUID = UUID()
    var date: Date = Date()
    var note: String
    var value: String = ""
}

struct Item: Identifiable, Codable, Equatable {
    var id: UUID = UUID()
    var name: String
    var primaryField: String   // Loft
    var secondaryField: String // Shaft Flex
    var notes: String = ""
    var dateAdded: Date = Date()
    var subLogs: [SubLogEntry] = []
}
