//
//  TreeSitterLanguage.swift
//  CodeEditTextView/CodeLanguage
//
//  Created by Lukas Pistrol on 25.05.22.
//

import Foundation

/// A collection of languages that are supported by `tree-sitter`
public enum TreeSitterLanguage: Equatable, Hashable, RawRepresentable {
    public init?(rawValue: String) {
        if rawValue.hasPrefix("external_") {
            self = .externallyDefined(name: String(rawValue.dropFirst(9)))
        } else {
            switch rawValue {
            case "agda": self = .agda
            case "bash": self = .bash
            case "c": self = .c
            case "cpp": self = .cpp
            case "cSharp": self = .cSharp
            case "css": self = .css
            case "dart": self = .dart
            case "dockerfile": self = .dockerfile
            case "elixir": self = .elixir
            case "go": self = .go
            case "goMod": self = .goMod
            case "haskell": self = .haskell
            case "html": self = .html
            case "java": self = .java
            case "javascript": self = .javascript
            case "jsdoc": self = .jsdoc
            case "json": self = .json
            case "jsx": self = .jsx
            case "julia": self = .julia
            case "kotlin": self = .kotlin
            case "lua": self = .lua
            case "markdown": self = .markdown
            case "markdownInline": self = .markdownInline
            case "objc": self = .objc
            case "ocaml": self = .ocaml
            case "ocamlInterface": self = .ocamlInterface
            case "perl": self = .perl
            case "php": self = .php
            case "python": self = .python
            case "regex": self = .regex
            case "ruby": self = .ruby
            case "rust": self = .rust
            case "scala": self = .scala
            case "sql": self = .sql
            case "swift": self = .swift
            case "toml": self = .toml
            case "tsx": self = .tsx
            case "typescript": self = .typescript
            case "verilog": self = .verilog
            case "yaml": self = .yaml
            case "zig": self = .zig
            case "plainText": self = .plainText
            default:  return nil
            }
        }
    }
    
    public var rawValue: String {
        switch self {
        case .agda: "agda"
        case .bash: "bash"
        case .c: "c"
        case .cpp: "cpp"
        case .cSharp: "cSharp"
        case .css: "css"
        case .dart: "dart"
        case .dockerfile: "dockerfile"
        case .elixir: "elixir"
        case let .externallyDefined(name): "external_\(name)"
        case .go: "go"
        case .goMod: "goMod"
        case .haskell: "haskell"
        case .html: "html"
        case .java: "java"
        case .javascript: "javascript"
        case .jsdoc: "jsdoc"
        case .json: "json"
        case .jsx: "jsx"
        case .julia: "julia"
        case .kotlin: "kotlin"
        case .lua: "lua"
        case .markdown: "markdown"
        case .markdownInline: "markdownInline"
        case .objc: "objc"
        case .ocaml: "ocaml"
        case .ocamlInterface: "ocamlInterface"
        case .perl: "perl"
        case .php: "php"
        case .python: "python"
        case .regex: "regex"
        case .ruby: "ruby"
        case .rust: "rust"
        case .scala: "scala"
        case .sql: "sql"
        case .swift: "swift"
        case .toml: "toml"
        case .tsx: "tsx"
        case .typescript: "typescript"
        case .verilog: "verilog"
        case .yaml: "yaml"
        case .zig: "zig"
        case .plainText: "plainText"

        }
    }
    
    public typealias RawValue = String

    case agda
    case bash
    case c
    case cpp
    case cSharp
    case css
    case dart
    case dockerfile
    case elixir
    case externallyDefined(name: String)
    case go
    case goMod
    case haskell
    case html
    case java
    case javascript
    case jsdoc
    case json
    case jsx
    case julia
    case kotlin
    case lua
    case markdown
    case markdownInline
    case objc
    case ocaml
    case ocamlInterface
    case perl
    case php
    case python
    case regex
    case ruby
    case rust
    case scala
    case sql
    case swift
    case toml
    case tsx
    case typescript
    case verilog
    case yaml
    case zig
    case plainText
}
