//
//  MBViewController.swift
//  swiftMVP
//
//  Created by BiaoShu on 2016/12/29.
//  Copyright © 2016年 dacai. All rights reserved.
//

import Foundation
import UIKit

class MBViewController: UIViewController {
    // instance
    fileprivate lazy var presenter : MBViewPresenter = {
        return MBViewPresenter(presenter: self)
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        presenter.fetchData1()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        presenter.fetchData2()
    }
}

// implemention with the protocol method
extension MBViewController:MBViewControllerProtocol{
    
    func loadData() {
        // do some loading eg. tableview & collectionview
    }
    
    func reloadData(param: AnyObject) {
        // do some update  eg. view & table
    }
}
