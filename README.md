# Swift-Actors-Introduction

Swift 5.5~

並行処理におけるデータ整合やその他の不具合を防ぐための仕組み。  
https://docs.swift.org/swift-book/LanguageGuide/Concurrency.html#ID645

actorは参照型で、マルチスレッド対応の型。  
> Unlike classes, actors allow only one task to access their mutable state at a time, which makes it safe for code in multiple tasks to interact with the same instance of an actor.   

UIから参照するプロパティには @MainActor をつける

```
await MainActor.run { [weak self] in
    self?.xxxx = ooooo
}
```

@MainActor キーワードがついたプロパティをメインスレッドで変更するための記述  

> When you access a property or method of an actor, you use await to mark the potential suspension point  

> the actor allows only one task at a time to access its mutable state, if code from another task is already interacting with the logger, this code suspends while it waits to access the property.
