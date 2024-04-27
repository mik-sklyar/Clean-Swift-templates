//
//  AlbumListPresenter.swift
//  Gallery
//
//  Created by Mikhail Sklyar on 2024-04-27.
//  Copyright (c) 2024 Horns and Hooves inc. All rights reserved.

import UIKit

protocol AlbumListPresentationLogic
{
    func presentSomething(response: AlbumList.Something.Response)
}

class AlbumListPresenter: AlbumListPresentationLogic
{
    weak var viewController: AlbumListDisplayLogic?
    
    // MARK: Do something
    
    func presentSomething(response: AlbumList.Something.Response)
    {
        let viewModel = AlbumList.Something.ViewModel()
        viewController?.displaySomething(viewModel: viewModel)
    }
}
