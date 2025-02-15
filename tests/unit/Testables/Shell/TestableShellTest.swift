//
//  TestableShellTest.swift
//  PHP Monitor
//
//  Created by Nico Verbruggen on 20/09/2022.
//  Copyright © 2023 Nico Verbruggen. All rights reserved.
//

import XCTest

class TestableShellTest: XCTestCase {
    func test_fake_shell_output_can_be_declared() async {
        let greeting = BatchFakeShellOutput(items: [
            .instant("Hello world\n"),
            .delayed(0.3, "Goodbye world")
        ])

        let output = await greeting.outputInstantaneously()

        XCTAssertEqual("Hello world\nGoodbye world", output.out)
    }

    func test_fake_shell_can_output_in_realtime() async {
        let greeting = BatchFakeShellOutput(items: [
            .instant("Hello world\n"),
            .delayed(2, "Goodbye world")
        ])

        let output = await greeting.output(didReceiveOutput: { _, _ in })

        XCTAssertEqual("Hello world\nGoodbye world", output.out)
    }

    func test_fake_shell_has_path() {
        ActiveShell.useTestable([:])

        XCTAssertEqual(Shell.PATH, "/usr/local/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin")
    }
}
