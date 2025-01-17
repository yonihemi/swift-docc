/*
 This source file is part of the Swift.org open source project

 Copyright (c) 2021-2023 Apple Inc. and the Swift project authors
 Licensed under Apache License v2.0 with Runtime Library Exception

 See https://swift.org/LICENSE.txt for license information
 See https://swift.org/CONTRIBUTORS.txt for Swift project authors
*/

import Foundation
import Markdown

/**
 A diagnostic note is a simple string message that should appear somewhere in a document.
 */
public struct DiagnosticNote {
    /// The source file to which to attach the `message`.
    public var source: URL

    /// The range to which to attach the `message`.
    public var range: SourceRange

    /// The message to attach to the document.
    public var message: String
}

@available(*, deprecated, message: "Use 'DiagnosticConsoleWriter.formattedDescription(for:options:)' instead. This deprecated API will be removed after 5.10 is released")
extension DiagnosticNote: CustomStringConvertible {
    @available(*, deprecated, message: "Use 'DiagnosticConsoleWriter.formattedDescription(for:options:)' instead. This deprecated API will be removed after 5.10 is released")
    public var description: String {
        let location = "\(source.path):\(range.lowerBound.line):\(range.lowerBound.column)"
        return "\(location): note: \(message)"
    }
}
