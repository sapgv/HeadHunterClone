//
//  SettingsSwitchCell.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 23.01.2024.
//

import UIKit

class SettingsSwitchCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var switcher: UISwitch!
    
    var completion: ((Bool) -> Void)?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.switcher.addTarget(self, action: #selector(switchAction), for: .valueChanged)
    }
    
    func setup(title: String, value: Bool) {
        self.titleLabel.text = title
        self.switcher.isOn = value
    }
    
    @objc
    private func switchAction() {
        self.completion?(self.switcher.isOn)
    }
    
}
