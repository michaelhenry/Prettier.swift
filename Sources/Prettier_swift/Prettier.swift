import JavaScriptCore
public class Prettier {

    public enum Parser:String {
        case flow
        case babel
        case babelFlow = "babel-flow"
        case typescript
        case css
        case less
        case scss
        case json
        case json5
        case jsonStringify = "json-stringify"
        case graphql
        case markdown
        case mdx
        case vue
        case yaml
        case html
        case angular
        case lwc
    }

    private let context: JSContext
    private let bundle: Bundle

    public init() {
        context = JSContext()
#if SWIFT_PACKAGE
        bundle = Bundle.module
#else
        bundle = Bundle(for: Self.self)
#endif

        let prettierLibs = [
            "standalone",
            "parser-angular",
            "parser-flow",
            "parser-babylon",
            "parser-glimmer",
            "parser-graphql",
            "parser-html",
            "parser-markdown",
            "parser-postcss",
            "parser-typescript",
        ]

        prettierLibs.forEach {
            if let url = bundle.url(forResource: $0, withExtension: "js") {
                let script = try? String(contentsOf: url)
                context.evaluateScript(script)
            }
        }

        // Create prettify() function
        context.evaluateScript("""
          function prettify(n, parser) {
            var config = {
              parser: parser,
              plugins: prettierPlugins
            }
            return prettier.format(n, config);
          }
      """)
    }

    public func prettify(_ code:String, parser:Parser) -> String? {
        let prettifyFn = context.objectForKeyedSubscript("prettify")!
        guard
            let result = prettifyFn.call(withArguments:[code, parser.rawValue]).toString(),
            result != "undefined" else { return nil }
        return result
    }
}


