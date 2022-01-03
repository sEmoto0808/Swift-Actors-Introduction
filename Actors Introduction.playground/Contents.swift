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
    private let queue = DispatchQueue(label: "user_save_queue")

    func get(_ id: String) -> User? {
        queue.sync {
            self.store[id]
        }
    }

    func save(_ user: User) {
        queue.sync {
            self.store[user.id] = user
        }
    }
}
