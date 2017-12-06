import UIKit
import MaterialComponents

class DetailViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
  private var labels = "ABCDEFDEFGHIJKLMNOPQRSTUVWXYZ".characters.map({ (c) -> String in
    return "\(c)"
  })

  init() {
    super.init(collectionViewLayout: MDCCollectionViewFlowLayout())
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    self.collectionView?.backgroundColor = .white

    self.collectionView?.register(MDCCollectionViewTextCell.self)
  }

  override func collectionView(_ collectionView: UICollectionView,
                               cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(for: indexPath) as MDCCollectionViewTextCell

    cell.textLabel?.text = self.labels[indexPath.item]

    cell.contentView.backgroundColor = UIColor.red.withAlphaComponent(0.5)

    cell.setNeedsLayout()

    return cell
  }

  override func numberOfSections(in collectionView: UICollectionView) -> Int {
    return 1
  }

  override func collectionView(_ collectionView: UICollectionView,
                               numberOfItemsInSection section: Int) -> Int {
    return self.labels.count
  }

  func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
    let width = collectionView.bounds.width
    return CGSize(width: width, height: 100)
  }
}

