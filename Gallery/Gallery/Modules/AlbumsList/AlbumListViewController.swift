//
//  AlbumListViewController.swift
//  Gallery
//
//  Created by Mikhail Sklyar on 2024-04-27.
//  Copyright (c) 2024 Horns and Hooves inc. All rights reserved.

import UIKit

protocol AlbumListDisplayLogic: AnyObject
{
    func displaySomething(viewModel: AlbumList.Something.ViewModel)
}

class AlbumListViewController: UIViewController, AlbumListDisplayLogic
{
    var interactor: AlbumListBusinessLogic?
    var router: (NSObjectProtocol & AlbumListRoutingLogic & AlbumListDataPassing)?
    
    // MARK: Object lifecycle
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?)
    {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder)
    {
        super.init(coder: aDecoder)
        setup()
    }
    
    // MARK: Setup
    
    private func setup()
    {
        let viewController = self
        let interactor = AlbumListInteractor()
        let presenter = AlbumListPresenter()
        let router = AlbumListRouter()
        viewController.interactor = interactor
        viewController.router = router
        interactor.presenter = presenter
        presenter.viewController = viewController
        router.viewController = viewController
        router.dataStore = interactor
    }
    
    // MARK: Routing
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if let scene = segue.identifier {
            let selector = NSSelectorFromString("routeTo\(scene)WithSegue:")
            if let router = router, router.responds(to: selector) {
                router.perform(selector, with: segue)
            }
        }
    }
    
    // MARK: View lifecycle
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        doSomething()
    }
    
    // MARK: Do something
    
    //@IBOutlet weak var nameTextField: UITextField!
    
    func doSomething()
    {
        let request = AlbumList.Something.Request()
        interactor?.doSomething(request: request)
    }
    
    func displaySomething(viewModel: AlbumList.Something.ViewModel)
    {
        //nameTextField.text = viewModel.name
    }
}
