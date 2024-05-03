import Vapor

func routes(_ app: Application) throws {
    app.get { req async in
        "It works!"
    }

    app.get("hello") { req async -> String in
        "Hello, world!"
    }

	app.grouped("foo").grouped("bar").get("", use: { _ in
		"foo-bar"
	})
	app.grouped("foo/baz").get("", use: { _ in
		"foo/baz"
	})
}
