import UIKit

class User {

    let id = UUID().uuidString
    let name: String

    init(name: String) {
        self.name = name
    }
}

class UserStorage {

    private var store = [String: User]()

    func get(_ id: String) -> User? {
        store[id]
    }

    func save(_ user: User) {
        store[user.id] = user
    }
}
