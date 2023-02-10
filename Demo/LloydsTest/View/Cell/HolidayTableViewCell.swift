//
//  HolidayTableViewCell.swift
//  LloydsTest
//
//  Created by Gaurav pande on 08/02/23.
//

import UIKit

class HolidayTableViewCell: UITableViewCell {
    // MARK: - IBOutlet
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var buntingImage: UIImageView!
    // MARK: - Variables
    static var identifier: String { return String(describing: self) }
    static var nib: UINib { return UINib(nibName: identifier, bundle: nil) }
    var cellViewModel: HolidayCellModel? {
        didSet {
            dateLabel.text  = cellViewModel?.date
            titleLabel.text = cellViewModel?.title
            if cellViewModel?.bunting == true {
                buntingImage.isHidden = false
            } else {
                buntingImage.isHidden = true
            }
        }
    }
}
