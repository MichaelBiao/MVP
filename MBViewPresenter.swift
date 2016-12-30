//
//  MBPresenter.swift
//
//  Created by BiaoShu on 2016/12/29.
//  Copyright © 2016年 BiaoShu. All rights reserved.
//

import Foundation

protocol MBViewControllerProtocol {
    
    // method call MBViewController and trans data 
    // which class will implemention the protocol : MBViewController
    func loadData() //call func to notify MBViewController
    
    func reloadData(param:AnyObject) //trans data to MBViewController

}

class MBViewPresenter:NSObject{
    // take protocol not the instance
    var presenter: MBViewControllerProtocol!
    // trans data model or data array
    lazy var model:[AnyObject] = [AnyObject]()
    // init
    init(presenter:MBViewControllerProtocol) {
        self.presenter = presenter;
    }
    // get data from API
    func fetchData1()  {
        // do some network and notify MBViewController to load
        self.presenter.loadData()
    }
    
    func fetchData2()  {
        // do some network and trans some data to MBViewController to reload
        self.presenter.reloadData(param: model as AnyObject)
    }
}
