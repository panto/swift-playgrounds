import Cocoa

// File Manager

let fileManager = NSFileManager.defaultManager()
let currentPath = fileManager.currentDirectoryPath

// Directories

let myHomeDirectory      = NSHomeDirectory()
let guestHomeDirectory   = NSHomeDirectoryForUser("guest")
let myDocumentsDirectory = NSHomeDirectory().stringByAppendingPathComponent("Documents")
let temporaryDirectry    = NSTemporaryDirectory()

// Dir change

if fileManager.changeCurrentDirectoryPath( NSHomeDirectory() ) == false {
    println("Directory does not exist")
}
fileManager.currentDirectoryPath

// Creating new directory

let newDirectory = NSHomeDirectory().stringByAppendingPathComponent("tmp-from-swift")

if fileManager.createDirectoryAtPath(newDirectory, withIntermediateDirectories: true, attributes: nil, error: nil) == false {
    println("Failed to create directory")
}

// Deleting directory

if fileManager.removeItemAtPath(newDirectory, error: nil) == false {
    println("Directory removal failed")
}

// Listing directory

let homeFilesList = fileManager.contentsOfDirectoryAtPath(NSHomeDirectory(), error: nil)
let homeFilesCount = homeFilesList.count

for file : AnyObject in homeFilesList {
    println(file)
}




