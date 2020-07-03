//
//  DemangleCommand.swift
//  SwiftDemangle
//
//  Created by Grigorii Entin on 27/04/2020.
//  Copyright © 2020 Grigory Entin. All rights reserved.
//

import CoreGraphics
import ArgumentParser
import CwlDemangle

extension SwiftDemangle {

    struct Demangle: ParsableCommand {

        @Argument(help: "Mangled name")
        var mangledName: String

        func run() throws {
            let swiftSymbol = try parseMangledSwiftSymbol(mangledName)

            // Print the symbol to a string (the .synthesizeSugarOnTypes option i
            // specified to match those used to generate the "manglings.txt" file).
            let result = swiftSymbol.print(using: SymbolPrintOptions.default.union(.synthesizeSugarOnTypes))
            print(result)
        }
    }
}
