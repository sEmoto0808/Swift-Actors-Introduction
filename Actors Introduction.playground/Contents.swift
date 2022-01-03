import UIKit

class User {

    let id: String
    let name: String

    init(id: String, name: String) {
        self.id = id
        self.name = name
    }
}

actor UserStorage {

    private var store = [String: User]()

    func get(_ id: String) -> User? {
        store[id]
    }

    func save(_ user: User) {
        store[user.id] = user
    }
}

let storage = UserStorage()
// Taskで囲ってawaitをつける
Task {
    let user = User(id: "123", name: "afraz")

    await storage.save(user)

    let getUser = await storage.get("123")
    
    print(String(describing: getUser))
}
