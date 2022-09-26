//
//  Shellable.swift
//  PHP Monitor
//
//  Created by Nico Verbruggen on 21/09/2022.
//  Copyright © 2022 Nico Verbruggen. All rights reserved.
//

import Foundation

protocol Shellable {
    // TODO: Rework this so it supports listening for updates (when piping) and
    func syncPipe(_ command: String) -> String
    func pipe(_ command: String) async -> String
}
