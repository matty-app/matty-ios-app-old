import UIKit

class InterestCell: UICollectionViewCell {
    
    @IBOutlet private var interestLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setup(interest: String) {
        layer.cornerRadius = 15
        layer.borderColor = UIColor.gray.cgColor
        layer.borderWidth = 1
        interestLabel.text = interest
    }
    
    func toggleSelected() {
        if isSelected {
            backgroundColor = .blue
            layer.borderWidth = 0
            interestLabel.textColor = .white
            interestLabel.font = interestLabel.font.withWeight(.regular)
        } else {
            backgroundColor = .white
            layer.borderWidth = 1
            interestLabel.textColor = .black
            interestLabel.font = interestLabel.font.withWeight(.light)
        }
    }
}

extension UIFont {
    
    func withWeight(_ weight: UIFont.Weight) -> UIFont {
        return UIFont.systemFont(ofSize: pointSize, weight: weight)
    }
}
