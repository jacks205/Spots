//
//  PantherTableViewCell.swift
//  Panther
//
//  Created by Mark Jackson on 9/21/15.
//  Copyright © 2015 Mark Jackson. All rights reserved.
//

import UIKit

class SpotsIndexedCollectionView: UICollectionView {
    
    var indexPath: NSIndexPath!
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
}

class SpotsTableViewCell: UITableViewCell {
        
    @IBOutlet weak var collectionView: SpotsIndexedCollectionView!
    
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var totalSpots: UILabel!
    
    // #pragma mark UICollectionViewDataSource
    
    func setCollectionViewDataSourceDelegate(dataSource : UICollectionViewDataSource, withDelegate delegate : UICollectionViewDelegate, atIndexPath indexPath : NSIndexPath){
        self.collectionView.dataSource = dataSource
        self.collectionView.delegate = delegate
        self.collectionView.indexPath = indexPath
        self.collectionView.reloadData()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
//        self.setNeedsDisplay()
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
    
//    
//    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
//        return 1
//    }
//    
//    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return 5
//    }
//    
//    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
//        let cell : CircleDataCollectionViewCell = collectionView.dequeueReusableCellWithReuseIdentifier("CollectionCell", forIndexPath: indexPath) as! CircleDataCollectionViewCell
//        
//        return cell
//    }

}
