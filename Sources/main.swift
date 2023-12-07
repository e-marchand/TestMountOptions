import Foundation

let keys: [URLResourceKey] = [.volumeNameKey, .volumeIsRemovableKey, .volumeIsEjectableKey]
let fm = FileManager()
let paths = fm.mountedVolumeURLs(includingResourceValuesForKeys: keys, options: [])
if let urls = paths {
    for url in urls {
        let components = url.pathComponents
        if components.count > 1
           /*&& components[1] == "Volumes"*/
        {
            print(url)

            print(try ( url as NSURL).resourceValues(forKeys: [URLResourceKey.isVolumeKey]))
            print(try ( url as NSURL).resourceValues(forKeys: [URLResourceKey.volumeSupportsExclusiveRenamingKey]))
            print(try ( url as NSURL).resourceValues(forKeys: [URLResourceKey.volumeSupportsSwapRenamingKey]))

            if let item = try fm.contentsOfDirectory(at: url, includingPropertiesForKeys: nil).first {
                print(item)

                print(try ( item as NSURL).resourceValues(forKeys: [URLResourceKey.isVolumeKey]))
                print(try ( item as NSURL).resourceValues(forKeys: [URLResourceKey.volumeSupportsExclusiveRenamingKey]))
                print(try ( item as NSURL).resourceValues(forKeys: [URLResourceKey.volumeSupportsSwapRenamingKey]))
            }
        }
    }
}
