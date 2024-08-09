//
//  ViewController.swift
//  IOSnativeclientapp
//
//  Created by Mariano Andres Di Maggio on 09/08/2024.
//

import UIKit
import SafariServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func openWebPage(_ sender: UIButton) {
        // The URL you want to open
        if let url = URL(string: "https://video-commerce.vercel.app/company/just?category=belleza") {
            // Create an instance of SFSafariViewController
            let safariViewController = SFSafariViewController(url: url)
            
            // Optional: Customize the appearance
            safariViewController.preferredBarTintColor = UIColor.black
            safariViewController.preferredControlTintColor = UIColor.white
            
            // Set the delegate
            safariViewController.delegate = self
            
            // Present the Safari view controller
            present(safariViewController, animated: true, completion: nil)
        }
    }
}

// Extend the ViewController to conform to SFSafariViewControllerDelegate
extension ViewController: SFSafariViewControllerDelegate {
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        // Handle the event when the SafariViewController is dismissed
        dismiss(animated: true, completion: nil)
    }
}
