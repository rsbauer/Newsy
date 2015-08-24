//
//  Feed.swift
//  Newsy
//
//  Created by Astro on 8/20/15.
//  Copyright (c) 2015 Rock Solid Bits. All rights reserved.
//

import Foundation
import ObjectMapper

class Feed: Mappable {
    
    var shareArticleEmailBody: String?
    var shareAlertEmailSubject: String?
    var shareAlertEmailBody: String?
    var shareSocialPrefix: String?
    var shareLiveVideoAlertEmailSubject: String?
    var shareLiveVideoAlertEmailBody: String?
    var shareLiveVideoSocialPrefix: String?
    var sharethrough: Bool?
    var termsURL: String?
    var privacyURL: String?
    var feedbackURL: String?
    var rateAppURL: String?
    var shareEmailSubject: String?
    var shareEmailBody: String?
    var baseurl: String?
    var liveBlogIsLivePollingIntervalInSeconds: Int?
    var checkForLiveBlogPollingIntervalInMinutes: Int?
    var liveBlogQuietTimerInMinutes: Int?
    
    var ratingsRequestDate: NSDate?
    var displayOutbrain: Bool?
    var outbrainPosition: Int?
    var outbrainHeadlines: Int?
    var outbrainPrivacy: String?
    var radioStreamConfig: String?
    
    
    class func newInstance(map: Map) -> Mappable? {
        return Feed()
    }
    
    func mapping(map: Map) {
        radioStreamConfig <- map["radio-stream-config"]
        displayOutbrain <- (map["displayOutbrain"], BoolTransform())
        outbrainPosition <- map["outbrainPosition"]
        outbrainHeadlines <- map["outbrainHeadlines"]
        outbrainPrivacy <- map["outbrainPrivacy"]
        ratingsRequestDate <- (map["ratingsRequestDate"], IntegerDateTransform())

        shareArticleEmailBody <- map["shareArticleEmailBody"]
        shareAlertEmailSubject <- map["shareAlertEmailSubject"]
        shareAlertEmailBody <- map["shareAlertEmailBody"]
        shareSocialPrefix <- map["shareSocialPrefix"]
        shareLiveVideoAlertEmailSubject <- map["shareLiveVideoAlertEmailSubject"]
        shareLiveVideoAlertEmailBody <- map["shareLiveVideoAlertEmailBody"]
        shareLiveVideoSocialPrefix <- map["shareLiveVideoSocialPrefix"]
        sharethrough <- (map["sharethrough"], BoolTransform())
        termsURL <- map["termsURL"]
        privacyURL <- map["privacyURL"]
        feedbackURL <- map["feedbackURL"]
        rateAppURL <- map["rateAppURL"]
        shareEmailSubject <- map["shareEmailSubject"]
        shareEmailBody <- map["shareEmailBody"]
        baseurl <- map["baseurl"]
        liveBlogIsLivePollingIntervalInSeconds <- map["liveBlogIsLivePollingIntervalInSeconds"]
        checkForLiveBlogPollingIntervalInMinutes <- map["checkForLiveBlogPollingIntervalInMinutes"]
        liveBlogQuietTimerInMinutes <- map["liveBlogQuietTimerInMinutes"]
    }
    
}
