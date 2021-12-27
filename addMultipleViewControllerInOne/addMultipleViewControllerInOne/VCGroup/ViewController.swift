//
//  ViewController.swift
//  addMultipleViewControllerInOne
//
//  Created by Milan Savaliya on 27/12/21.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak private var viewGreen: UIView!
    @IBOutlet weak private var viewBlue: UIView!
    @IBOutlet weak private var viewRed: UIView!
    @IBOutlet weak private var viewPurple: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        let greenViewController = GreenViewController.instantiate(fromAppStoryboard: .Main)
        let blueViewController = BlueViewController.instantiate(fromAppStoryboard: .Main)
        let redViewController = RedViewController.instantiate(fromAppStoryboard: .Main)
        let purpleViewController = PurpleViewController.instantiate(fromAppStoryboard: .Main)

        ViewEmbedder.embed(parent: self, container: viewGreen, child: greenViewController, previous: self)
        greenViewController.superVc = self

        ViewEmbedder.embed(parent: self, container: viewBlue, child: blueViewController, previous: self)
        greenViewController.superVc = self

        ViewEmbedder.embed(parent: self, container: viewRed, child: redViewController, previous: self)
        greenViewController.superVc = self

        ViewEmbedder.embed(parent: self, container: viewPurple, child: purpleViewController, previous: self)
        greenViewController.superVc = self
    }
}
