# Swift-Actors-Introduction

Swift 5.5~

並行処理におけるデータ整合やその他の不具合を防ぐための仕組み。
https://docs.swift.org/swift-book/LanguageGuide/Concurrency.html#ID645

actorは参照型で、マルチスレッド対応の型。

UIから参照するプロパティには @MainActor をつける

```
await MainActor.run { [weak self] in
    self?.xxxx = ooooo
}
```

@MainActor キーワードがついたプロパティをメインスレッドで変更するための記述
