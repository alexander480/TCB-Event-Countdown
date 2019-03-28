//
//  Cells.swift
//  Event Countdown
//
//  Created by Delta Vel on 3/27/19.
//  Copyright © 2019 Delta Vel. All rights reserved.
//

import Foundation
import UIKit

class EventCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var daysLeft: UILabel!
}

class IconEventCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var subtitle: UILabel!
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var daysLeft: UILabel!
}

class TextFieldCell: UITableViewCell {
    @IBOutlet weak var textField: UITextField!
}

class DateTextFieldCell: UITableViewCell {
    @IBOutlet weak var textField: UITextField!
}

class SwitchCell: UITableViewCell {
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var toggleSwitch: UISwitch!
}

class PickerTextFieldCell: UITableViewCell {
    @IBOutlet weak var textField: UITextField!
}
