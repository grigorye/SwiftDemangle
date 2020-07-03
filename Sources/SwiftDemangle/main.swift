//
//  main.swift
//  SwiftDemangle
//
//  Created by Grigorii Entin on 27/04/2020.
//  Copyright © 2020 Grigory Entin. All rights reserved.
//

import ArgumentParser

struct SwiftDemangle: ParsableCommand {

    static let configuration = CommandConfiguration(
        subcommands: [
            Demangle.self,
        ]
    )
}

SwiftDemangle.main()
