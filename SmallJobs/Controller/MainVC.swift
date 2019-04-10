//
//  ViewController.swift
//  SmallJobs
//
//  Created by Austin Rightnowar on 4/9/19.
//  Copyright © 2019 Austin Rightnowar. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    private var sampleJob = SampleJob.createSampleJob()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    

}

extension MainVC: UICollectionViewDelegate, UICollectionViewDataSource{
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return sampleJob.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "sampleJobsCell", for: indexPath) as! SampleJobsCell
        
        cell.sampleJob = sampleJob[indexPath.row]
        
        return cell
    }
}

