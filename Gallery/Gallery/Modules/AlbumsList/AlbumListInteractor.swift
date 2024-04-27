//
//  AlbumListInteractor.swift
//  Gallery
//
//  Created by Mikhail Sklyar on 2024-04-27.
//  Copyright (c) 2024 Horns and Hooves inc. All rights reserved.

import UIKit

protocol AlbumListBusinessLogic
{
    func doSomething(request: AlbumList.Something.Request)
}

protocol AlbumListDataStore
{
    //var name: String { get set }
}

class AlbumListInteractor: AlbumListBusinessLogic, AlbumListDataStore
{
    var presenter: AlbumListPresentationLogic?
    var worker: AlbumListWorker?
    //var name: String = ""
    
    // MARK: Do something
    
    func doSomething(request: AlbumList.Something.Request)
    {
        worker = AlbumListWorker()
        worker?.doSomeWork()
        
        let response = AlbumList.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
