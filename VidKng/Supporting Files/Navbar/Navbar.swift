/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/


@IBDesignable class Navbar: UIView {
    //MARK: - OUTLETS
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var searchButton: UIButton!
    //MARK: - VARIABLES
    //SEARCH
    var searchTapped: (() -> Void)?
    
    required init?(coder: NSCoder) {
            super.init(coder: coder)
            commonInit()
        }
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            commonInit()
        }

        func commonInit() {
            Bundle.main.loadNibNamed("Navbar", owner: self, options: nil)
            addSubview(contentView)
            contentView.frame = self.bounds
            contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
        }
    //MARK: - EXPLORE PAGE NAVIGATION
    @IBAction func searchButtonTapped(_ sender: Any) {
        searchTapped?()
    }
}
