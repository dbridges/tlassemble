import Cocoa

func exitWithError(error: String) {
    println(error)
    exit(EXIT_FAILURE)
}

func getImageFiles(srcDir: String) -> [String]? {
    let fileManager = NSFileManager.defaultManager()
    if let contents = fileManager.contentsOfDirectoryAtPath(srcDir, error: nil) as [String]? {
        return contents.filter({$0.lowercaseString.hasSuffix(".jpeg") || 
                                $0.lowercaseString.hasSuffix(".jpg") || 
                                $0.lowercaseString.hasSuffix(".png")})
    } else {
        return nil
    }
}

func main() {
    if let files = getImageFiles("./test") {

    }
}

main()
