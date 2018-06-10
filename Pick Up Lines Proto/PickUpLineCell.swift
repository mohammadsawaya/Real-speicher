
import UIKit

class PickUpLineCell: UITableViewCell {

    @IBOutlet weak var headLine: UILabel!
    @IBOutlet weak var imageLink: UILabel!
    @IBOutlet weak var quelle: UILabel!
    
    func configure(with pickUpLine: PickUpLine) {
        headLine.text = pickUpLine.headLine
        quelle.text = pickUpLine.quelle
        imageLink.text = pickUpLine.imageLink
    }
}
