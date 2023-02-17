//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Charlie Hieger on 11/15/22.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Take Salchi out on a walk",
                 description: "Try to take her to the dog park."),
            Task(title: "Buy some milk",
                 description: "Whole milk not 2%"),
            Task(title: "Buy art supplies",
                 description: "Get new brushes from Michael's"),
            Task(title: "Eat Food",
                 description: "Just go eat whatever")
        ]
    }
}
