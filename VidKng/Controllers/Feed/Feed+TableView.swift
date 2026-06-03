//
/********** Developed by Drudots Technology **********/
/******** https://www.drudotstech.com **********/
//

extension FeedVC: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        } else {
            return 5
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0 {
            return loadFilterTVuCell(indexPath)
        }
        else if indexPath.section == 1{
            return loadVideoTVuCell(indexPath)
        }
        return UITableViewCell()
    }
}
//MARK: - LOAD CELLS
extension FeedVC{
    func loadFilterTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = feedTableView.dequeueReusableCell(withIdentifier: "FilterTVuCell", for: indexPath) as? FilterTVuCell else {
            return FilterTVuCell()
        }
        return cell
    }
    func loadVideoTVuCell(_ indexPath: IndexPath)->UITableViewCell{
        guard let cell = feedTableView.dequeueReusableCell(withIdentifier: "VideoTVuCell", for: indexPath) as? VideoTVuCell else {
            return VideoTVuCell()
        }
        return cell
    }
}
//MARK: - SETUP TABLE VIEW
extension FeedVC{
    
    func setupTableView(){
        feedTableView.delegate = self
        feedTableView.dataSource = self
        
        feedTableView.rowHeight = UITableView.automaticDimension
        feedTableView.estimatedRowHeight = 150
    }
    //MARK: - REGISTER NIBS
    func registerNibs(){
        let headerNib = UINib(nibName: "FilterTVuCell", bundle: nil)
        feedTableView.register(headerNib, forCellReuseIdentifier: "FilterTVuCell")
        
        let videoNib = UINib(nibName: "VideoTVuCell", bundle: nil)
        feedTableView.register(videoNib, forCellReuseIdentifier: "VideoTVuCell")
    }
}
