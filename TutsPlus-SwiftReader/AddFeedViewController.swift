//
//  AddFeedViewController.swift
//  TutsPlus-SwiftReader
//
//  Created by Yan Malinovsky on 16.09.16.
//  Copyright © 2016 Yan Malinovsky. All rights reserved.
//

import UIKit

class AddFeedViewController: UIViewController {
    
    @IBOutlet weak var feedUrl: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exampleLable.editable = false;
        exampleLable.selectable = true;
        
        appleDeveloperRss.editable = false;
        appleDeveloperRss.selectable = true;
        
        xamarinBlogRss.editable = false;
        xamarinBlogRss.selectable = true;

        // Do any additional setup after loading the view.
    }

    @IBOutlet var exampleLable: UITextView!
    
    @IBOutlet var appleDeveloperRss: UITextView!
    
    @IBOutlet var xamarinBlogRss: UITextView!

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "addFeedUnwind" {
            let feedsViewController = segue.destinationViewController as! FeedsTableViewController
            feedsViewController.addNewFeed(feedUrl.text!)
            
            feedsViewController.tableView.reloadData()
        }
    }
}
