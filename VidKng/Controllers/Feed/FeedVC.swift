/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class FeedVC: UIViewController {
//MARK: - OUTLETS
    @IBOutlet weak var feedTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        registerNibs()
    }
}
