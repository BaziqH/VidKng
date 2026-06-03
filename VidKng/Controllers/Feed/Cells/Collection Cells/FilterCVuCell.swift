/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

class FilterCVuCell: UICollectionViewCell {
//MARK: - OUTLETS
    @IBOutlet weak var filterOptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configure(filterOptionLabel: String){
        
        self.filterOptionLabel.text = filterOptionLabel
    }

}
