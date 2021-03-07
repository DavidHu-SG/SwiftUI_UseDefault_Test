# SwiftUI UseDefault Test
Demo code for a SwiftUI Canvas error. Caused by UserDefaults.standard.setValue

Simply, those code will cause a Canvas error, and live render will stopped.

```
UserDefaults.standard.setValue(true, forKey: "UseDefault_Test")
```

And Diagnostics log says:

```
failed to produce diagnostic for expression; please file a bug report

----------------------------------------

CompileDylibError: Failed to build ContentView.swift

Compiling failed: failed to produce diagnostic for expression; please file a bug report

/Users/davidhu/Library/Developer/Xcode/DerivedData/SwiftUI_UseDefault_Test-dcgmkfyxooopfghivfyigayieiqx/Build/Intermediates.noindex/Previews/SwiftUI_UseDefault_Test/Intermediates.noindex/SwiftUI_UseDefault_Test.build/Debug/SwiftUI_UseDefault_Test.build/Objects-normal/x86_64/ContentView.2.preview-thunk.swift:14:76: error: failed to produce diagnostic for expression; please file a bug report
    @_dynamicReplacement(for: body) private var __preview__body: some View {
                                                                           ^
```

I guess the `setVaule` in `UserDefaults` got some errors

```
open func setValue(_ value: Any?, forKey key: String)
```
