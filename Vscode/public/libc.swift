#if os(macOS) || os(iOS)
import Darwin
#elseif os(Linux)
import Glibc
#endif

let message: String = "Hello, world!"

let messageBytes: [String.UTF8View.Element] = Array(message.utf8)

let bytesWritten: Int = write(STDOUT_FILENO, messageBytes, messageBytes.count)

if bytesWritten != -1 {
    print("Bytes written: \(bytesWritten)")
} else {
    print("Error writing to stdout")
}

let sleepDuration: UInt32 = 5
print("Sleeping for \(sleepDuration) seconds...")
sleep(sleepDuration)
print("Awake!")
