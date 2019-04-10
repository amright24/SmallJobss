//
//  SampleJob.swift
//  SmallJobs
//
//  Created by Austin Rightnowar on 4/10/19.
//  Copyright © 2019 Austin Rightnowar. All rights reserved.
//

import UIKit

class SampleJob {
    
    var title = ""
    var image: UIImage
    
    init(title: String, image: UIImage) {
        self.title = title
        self.image = image
    }
    
    static func createSampleJob() -> [SampleJob] {
        return [
            SampleJob(title: "Photography", image: UIImage(named: "photography.png")!),
            SampleJob(title: "Lessons", image: UIImage(named: "lessons.png")!),
            SampleJob(title: "Modeling", image: UIImage(named: "modeling.png")!)
        
        ]
    }
}
