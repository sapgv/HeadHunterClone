//
//  SettingsViewController.swift
//  HeadHunterClone
//
//  Created by Grigory Sapogov on 23.01.2024.
//

import UIKit

protocol ISettingsViewController: UIViewController {
    
    
}

final class SettingsViewController: UIViewController {
    
    var presenter: ISettingsViewPresenter!
    
    private var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Settings"
        self.view.backgroundColor = .systemBackground
        self.presenter.view = self
        self.setupTableView()
        self.layout()
    }
    
    private func setupTableView() {
        
        self.tableView = UITableView()
        self.tableView.dataSource = self
        self.tableView.refreshControl = UIRefreshControl()
        self.tableView.register(UINib(nibName: "SettingsSwitchCell", bundle: nil), forCellReuseIdentifier: "SettingsSwitchCell")
        
    }
    
    private func layout() {
        
        self.tableView.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(tableView)
        
        self.tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        self.tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor).isActive = true
        self.tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        self.tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor).isActive = true
        
    }
    
}

extension SettingsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = self.tableView.dequeueReusableCell(withIdentifier: "SettingsSwitchCell", for: indexPath) as? SettingsSwitchCell else { return UITableViewCell() }
        
        cell.setup(title: "Зарплата в час", value: self.presenter.showSolaryPerHour)
        cell.completion = { [weak self] value in
            self?.presenter.showSolaryPerHour = value
        }
        
        return cell
        
    }
    
}

extension SettingsViewController: ISettingsViewController {
    
    
    
}
