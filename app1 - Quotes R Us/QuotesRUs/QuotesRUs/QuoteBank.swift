//
//  QuoteBank.swift
//  QuotesRUs
//
//  Created by Jordan Bloomingdale on 7/11/17.
//  Copyright © 2017 Urcommerce. All rights reserved.
//

import Foundation

class quotesRUs {
    
    
    var quotes : [String] = [
        "If you do something and it turns out pretty good, then you should go do something else wonderful, not dwell on it for too long. Just figure out what's next.", //Steve Jobs
        "No matter how small you start, start something that matters.", //Brendon Burchard
        "The credit belongs to those who are actually in the arena, who strive valiantly; who know the great enthusiasums, the great devotions, and spend themselves in a worth cause; who at best know the triumph of high achievement; and who, at worst, if they fail, fail while daring greatly, so that their place shall never be with those ..." //Theodore Roosevelt
]

    var quoteImageNames: [String] = ["thumb_steve", "thumb_brendon", "thumb_theodore"]
    
    var quoteAuthorNames: [String] = ["Steve Jobs", "Brendon Burchard", "Theodore Roosevelt"]

    var currentQuoteIndex: Int = 0
    
    func getNextQuote() -> String{
        if currentQuoteIndex == (quotes.count - 1) {
            currentQuoteIndex = 0
        } else {
            currentQuoteIndex += 1
        }
        
        return quotes[currentQuoteIndex]
    }
    
    func getNextQuoteImage() -> String {
        return self.quoteImageNames[currentQuoteIndex]
    }
    
    func getNextQuoteAuthor() -> String {
        return self.quoteAuthorNames[currentQuoteIndex]
    }
}









