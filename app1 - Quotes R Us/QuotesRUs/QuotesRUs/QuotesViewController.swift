//
//  QuotesViewController.swift
//  QuotesRUs
//
//  Created by Jordan Bloomingdale on 7/11/17.
//  Copyright © 2017 Urcommerce. All rights reserved.
//

import UIKit

class QuoteViewController : UIViewController {
    
    @IBOutlet weak var quoteLabel: UILabel!
    @IBOutlet weak var authorImageLabel: UIImageView!
    @IBOutlet weak var authorNameLabel: UILabel!
    
    var quoteBank: quotesRUs = quotesRUs()
    var authorImage: quotesRUs = quotesRUs()
    var authorName: quotesRUs = quotesRUs()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        quoteLabel.text = "Insert Quote Here"
        
        let starterImage = UIImage(named: "thumb_steve")
        authorImageLabel.image = starterImage
        authorNameLabel.text = "Authors Name"
        
    }
    
    @IBAction func inspireButton(_ sender: AnyObject) {
        
        let nextQuote = quoteBank.getNextQuote()
        let nextQuoteImage = quoteBank.getNextQuoteImage()
        
        let image = UIImage(named: nextQuoteImage)
        let nextAuthorName = quoteBank.getNextQuoteAuthor()
        
        authorImageLabel.image = image
        quoteLabel.text = nextQuote
        authorNameLabel.text = nextAuthorName
        
    }
    
    
}












