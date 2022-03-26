import UIKit

class InterestsViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    private let interests = ["CS:GO", "World of Warcraft", "Hiking", "Adventure", "Swimming", "Cycling", "Documentary", "Coding"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        collectionView.register(UINib(nibName: "InterestCell", bundle: nil), forCellWithReuseIdentifier: "InterestCell")
        collectionView.allowsMultipleSelection = true
        collectionView.delegate = self
        collectionView.dataSource = self
    }
}

extension InterestsViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! InterestCell
        cell.toggleSelected()
    }
    
    func collectionView(_ collectionView: UICollectionView, didDeselectItemAt indexPath: IndexPath) {
        let cell = collectionView.cellForItem(at: indexPath) as! InterestCell
        cell.toggleSelected()
    }
}

extension InterestsViewController: UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return interests.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "InterestCell", for: indexPath) as! InterestCell
        cell.setup(interest: interests[indexPath.row])
        return cell
    }
}

extension InterestsViewController: UICollectionViewDelegateFlowLayout {
    //TODO: Change collection view layout
}
