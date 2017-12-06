import UIKit
import MaterialComponents

class ListViewController: UIViewController {
  let detailViewController = DetailViewController()

  let appBar = MDCAppBar()

  init() {
    super.init(nibName: nil, bundle: nil)

    self.addChildViewController(appBar.headerViewController)

    self.addChildViewController(detailViewController)

    detailViewController.didMove(toParentViewController: self)
  }

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

  override func viewDidLoad() {
    super.viewDidLoad()

    title = "Test"

    navigationController?.isNavigationBarHidden = true

    appBar.addSubviewsToParent()
    appBar.headerViewController.headerView.backgroundColor = UIColor.green.withAlphaComponent(0.5)

    view.insertSubview(detailViewController.view, at: 0)
    appBar.headerViewController.headerView.trackingScrollView = detailViewController.collectionView
  }
}
