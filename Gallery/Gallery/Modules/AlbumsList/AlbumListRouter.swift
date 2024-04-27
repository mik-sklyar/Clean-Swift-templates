//
//  AlbumListRouter.swift
//  Gallery
//
//  Created by Mikhail Sklyar on 2024-04-27.
//  Copyright (c) 2024 Horns and Hooves inc. All rights reserved.

import UIKit

@objc protocol AlbumListRoutingLogic
{
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol AlbumListDataPassing
{
    var dataStore: AlbumListDataStore? { get }
}

class AlbumListRouter: NSObject, AlbumListRoutingLogic, AlbumListDataPassing
{
    weak var viewController: AlbumListViewController?
    var dataStore: AlbumListDataStore?
    
    // MARK: Routing
    
    //func routeToSomewhere(segue: UIStoryboardSegue?)
    //{
    //  if let segue = segue {
    //    let destinationVC = segue.destination as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //  } else {
    //    let storyboard = UIStoryboard(name: "Main", bundle: nil)
    //    let destinationVC = storyboard.instantiateViewController(withIdentifier: "SomewhereViewController") as! SomewhereViewController
    //    var destinationDS = destinationVC.router!.dataStore!
    //    passDataToSomewhere(source: dataStore!, destination: &destinationDS)
    //    navigateToSomewhere(source: viewController!, destination: destinationVC)
    //  }
    //}
    
    // MARK: Navigation
    
    //func navigateToSomewhere(source: AlbumListViewController, destination: SomewhereViewController)
    //{
    //  source.show(destination, sender: nil)
    //}
    
    // MARK: Passing data
    
    //func passDataToSomewhere(source: AlbumListDataStore, destination: inout SomewhereDataStore)
    //{
    //  destination.name = source.name
    //}
}
