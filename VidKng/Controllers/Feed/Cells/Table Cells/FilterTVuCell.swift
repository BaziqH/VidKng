/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/

import UIKit

class FilterTVuCell: UITableViewCell {
    //MARK: - OUTLETS
    @IBOutlet weak var filterCollectionView: UICollectionView!
    //MARK: - VARIABLES
    var filterOptions: [String] = []
    //MARK: - CYCLE
    override func awakeFromNib() {
        super.awakeFromNib()
        setupCollectionView()
        registerCVuCell()
        loadData()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
}
//MARK: - LOAD DATA
extension FilterTVuCell{
    func loadData(){
       filterOptions = [
            "Action",
            "Comedy",
            "Drama",
            "Horror",
            "Sci-Fi",
            "Romance",
            "Thriller",
            "Documentary",
            "Trending",
            "Live Streams"
       ]
    }
}
//MARK: - COLLECTION VIEW
extension FilterTVuCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return filterOptions.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        loadDoctorListTVuFilterCVuCell(indexPath)
    }
}
//MARK: - COLLECTION VIEW FLOW LAYOUT
extension FilterTVuCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
//        let label = UILabel()
//        label.text = filterOptions[indexPath.row]
//        let maxSize = CGSize(width: CGFloat.greatestFiniteMagnitude, height: label.frame.height)
//        let neededSize = label.sizeThatFits(maxSize)
//        let width = neededSize.width
//        return CGSize(width: width, height: collectionView.frame.height)
        
        
        let text = filterOptions[indexPath.item]
        let font = UIFont.systemFont(ofSize: 15, weight: .medium)
        
        let attributes = [NSAttributedString.Key.font: font]
        let size = (text as NSString).size(withAttributes: attributes)
        
        let width = ceil(size.width) + 20
        let height = ceil(size.height) + 20 // Or calculate based on fontSize
            
        return CGSize(width: width, height: collectionView.frame.height)
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        10
    }
}
//MARK: - LOAD CELLS
extension FilterTVuCell{
    func loadDoctorListTVuFilterCVuCell(_ indexPath: IndexPath)->UICollectionViewCell{
        guard let cell = filterCollectionView.dequeueReusableCell(withReuseIdentifier: "FilterCVuCell", for: indexPath) as? FilterCVuCell else {
            return FilterCVuCell()
        }
        cell.configure(filterOptionLabel: filterOptions[indexPath.row])
        return cell
    }
}
//MARK: - SETUP COLLECTION VIEW
extension FilterTVuCell{
    func setupCollectionView(){
        filterCollectionView.delegate = self
        filterCollectionView.dataSource = self
    }
    //MARK: - REGISTER CELLS
    func registerCVuCell(){
        let nib = UINib(nibName: "FilterCVuCell", bundle: nil)
        filterCollectionView.register(nib, forCellWithReuseIdentifier: "FilterCVuCell")
    }
}



