//
//  PhpVersionManagerWindowController.swift
//  PHP Monitor
//
//  Created by Nico Verbruggen on 19/03/2023.
//  Copyright © 2023 Nico Verbruggen. All rights reserved.
//

import Foundation
import Cocoa
import SwiftUI

class PhpVersionManagerWindowController: PMWindowController {

    // MARK: - Window Identifier

    var view: PhpVersionManagerView!

    override var windowName: String {
        return "PhpVersionManager"
    }

    public static func create(delegate: NSWindowDelegate?) {
        let windowController = Self()
        windowController.window = NSWindow()
        windowController.view = PhpVersionManagerView(
            formulae: Brew.shared.formulae,
            handler: BrewFormulaeHandler()
        )

        guard let window = windowController.window else { return }
        window.title = ""
        window.styleMask = [.titled, .closable, .miniaturizable]
        window.titlebarAppearsTransparent = true
        window.delegate = delegate ?? windowController
        window.contentView = NSHostingView(rootView: windowController.view)
        window.setContentSize(NSSize(width: 600, height: 800))

        App.shared.phpVersionManagerWindowController = windowController
    }

    public static func show(delegate: NSWindowDelegate? = nil) {
        if App.shared.phpVersionManagerWindowController == nil {
            Self.create(delegate: delegate)
        }

        App.shared.phpVersionManagerWindowController?.showWindow(self)
        App.shared.phpVersionManagerWindowController?.positionWindowInTopRightCorner()

        NSApp.activate(ignoringOtherApps: true)

        App.shared.phpVersionManagerWindowController?.window?.orderFrontRegardless()
    }
}
