
import Foundation
import RealmSwift

@objcMembers class PickUpLine: Object {
    
    dynamic var headLine: String = ""
    dynamic var quelle: String = ""
    dynamic var imageLink: String = ""
    
    convenience init(headLine: String, quelle: String, imageLink: String) {
        self.init()
        self.headLine = headLine
        self.quelle = quelle
        self.imageLink = imageLink
    }
}
