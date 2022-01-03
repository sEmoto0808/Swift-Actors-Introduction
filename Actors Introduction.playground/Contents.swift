import UIKit

class User {

    let id: String
    let name: String

    init(id: String, name: String) {
        self.id = id
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

let user = User(id: "123", name: "afraz")

let storage = UserStorage()
storage.save(user)
let getUser = storage.get("123")
print(String(describing: getUser))
