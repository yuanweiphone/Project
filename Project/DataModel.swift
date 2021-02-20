//
//  DataModel.swift
//  Project
//
//  Created by 苑伟 on 2021/2/20.
//

import UIKit

let KSaveFile = "SaveFile"

class DataModel: NSObject,NSCoding,NSSecureCoding {
    
    var current_user_url: String?
    var current_user_authorizations_html_url: String?
    var authorizations_url: String?
    var code_search_url: String?
    var commit_search_url: String?
    var emails_url: String?
    var emojis_url: String?
    var events_url: String?
    var feeds_url: String?
    var followers_url: String?
    var following_url: String?
    var gists_url: String?
    var hub_url: String?
    var issue_search_url: String?
    var issues_url: String?
    var keys_url: String?
    var label_search_url: String?
    var notifications_url: String?
    var organization_url: String?
    var organization_repositories_url: String?
    var organization_teams_url: String?
    var public_gists_url: String?
    var rate_limit_url: String?
    var repository_url: String?
    var repository_search_url: String?
    var current_user_repositories_url: String?
    var starred_url: String?
    var starred_gists_url: String?
    var user_url: String?
    var user_organizations_url: String?
    var user_repositories_url: String?
    var user_search_url: String?

    static var supportsSecureCoding: Bool = true

    override init() { }
    
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(current_user_url, forKey: "current_user_url")
        aCoder.encode(current_user_authorizations_html_url, forKey: "current_user_authorizations_html_url")
        aCoder.encode(authorizations_url, forKey: "authorizations_url")
        aCoder.encode(code_search_url, forKey: "code_search_url")
        aCoder.encode(commit_search_url, forKey: "commit_search_url")
        aCoder.encode(emails_url, forKey: "emails_url")
        aCoder.encode(emojis_url, forKey: "emojis_url")
        aCoder.encode(events_url, forKey: "events_url")
        aCoder.encode(feeds_url, forKey: "feeds_url")
        aCoder.encode(followers_url, forKey: "followers_url")
        aCoder.encode(following_url, forKey: "following_url")
        aCoder.encode(gists_url, forKey: "gists_url")
        aCoder.encode(hub_url, forKey: "hub_url")
        aCoder.encode(issue_search_url, forKey: "issue_search_url")
        aCoder.encode(issues_url, forKey: "issues_url")
        aCoder.encode(keys_url, forKey: "keys_url")
        aCoder.encode(label_search_url, forKey: "label_search_url")
        aCoder.encode(notifications_url, forKey: "notifications_url")
        aCoder.encode(organization_url, forKey: "organization_url")
        aCoder.encode(organization_repositories_url, forKey: "organization_repositories_url")
        aCoder.encode(organization_teams_url, forKey: "organization_teams_url")
        aCoder.encode(public_gists_url, forKey: "public_gists_url")
        aCoder.encode(rate_limit_url, forKey: "rate_limit_url")
        aCoder.encode(repository_url, forKey: "repository_url")
        aCoder.encode(repository_search_url, forKey: "repository_search_url")
        aCoder.encode(current_user_repositories_url, forKey: "current_user_repositories_url")
        aCoder.encode(starred_url, forKey: "starred_url")
        aCoder.encode(starred_gists_url, forKey: "starred_gists_url")
        aCoder.encode(user_url, forKey: "user_url")
        aCoder.encode(user_organizations_url, forKey: "user_organizations_url")
        aCoder.encode(user_repositories_url, forKey: "user_repositories_url")
        aCoder.encode(user_search_url, forKey: "user_search_url")
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        current_user_url = aDecoder.decodeObject(forKey: "current_user_url") as? String
        current_user_authorizations_html_url = aDecoder.decodeObject(forKey: "current_user_authorizations_html_url") as? String
        authorizations_url = aDecoder.decodeObject(forKey: "authorizations_url") as? String
        code_search_url = aDecoder.decodeObject(forKey: "code_search_url") as? String
        commit_search_url = aDecoder.decodeObject(forKey: "commit_search_url") as? String
        emails_url = aDecoder.decodeObject(forKey: "emails_url") as? String
        emojis_url = aDecoder.decodeObject(forKey: "emojis_url") as? String
        events_url = aDecoder.decodeObject(forKey: "events_url") as? String
        feeds_url = aDecoder.decodeObject(forKey: "feeds_url") as? String
        followers_url = aDecoder.decodeObject(forKey: "followers_url") as? String
        following_url = aDecoder.decodeObject(forKey: "following_url") as? String
        gists_url = aDecoder.decodeObject(forKey: "gists_url") as? String
        hub_url = aDecoder.decodeObject(forKey: "hub_url") as? String
        issue_search_url = aDecoder.decodeObject(forKey: "issue_search_url") as? String
        issues_url = aDecoder.decodeObject(forKey: "issues_url") as? String
        keys_url = aDecoder.decodeObject(forKey: "keys_url") as? String
        label_search_url = aDecoder.decodeObject(forKey: "label_search_url") as? String
        notifications_url = aDecoder.decodeObject(forKey: "notifications_url") as? String
        organization_url = aDecoder.decodeObject(forKey: "organization_url") as? String
        organization_repositories_url = aDecoder.decodeObject(forKey: "organization_repositories_url") as? String
        organization_teams_url = aDecoder.decodeObject(forKey: "organization_teams_url") as? String
        public_gists_url = aDecoder.decodeObject(forKey: "public_gists_url") as? String
        rate_limit_url = aDecoder.decodeObject(forKey: "rate_limit_url") as? String
        repository_url = aDecoder.decodeObject(forKey: "repository_url") as? String
        repository_search_url = aDecoder.decodeObject(forKey: "repository_search_url") as? String
        current_user_repositories_url = aDecoder.decodeObject(forKey: "current_user_repositories_url") as? String
        starred_url = aDecoder.decodeObject(forKey: "starred_url") as? String
        starred_gists_url = aDecoder.decodeObject(forKey: "starred_gists_url") as? String
        user_url = aDecoder.decodeObject(forKey: "user_url") as? String
        user_organizations_url = aDecoder.decodeObject(forKey: "user_organizations_url") as? String
        user_repositories_url = aDecoder.decodeObject(forKey: "user_repositories_url") as? String
        user_search_url = aDecoder.decodeObject(forKey: "user_search_url") as? String
    }
    
    class func saveFileData(_ array: [DataModel]) {
        
        let data = try? NSKeyedArchiver.archivedData(withRootObject: array, requiringSecureCoding: true)
        do {
            UserDefaults.standard.set(data, forKey: KSaveFile)
        }
    }
    
    class func getFileData() -> [DataModel]? {
        
        let resultData = UserDefaults.standard.data(forKey: KSaveFile)
        if let data = resultData {
            let resultArray = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data)
            do {
                return resultArray as? [DataModel]
            }
        }
        return nil
    }
    
    class func dicConvertToModel(_ dic: [String:Any]) ->DataModel {
        
        let model = DataModel()
        model.current_user_url = dic["current_user_url"] as? String
        model.current_user_authorizations_html_url = dic["current_user_authorizations_html_url"] as? String
        model.authorizations_url = dic["authorizations_url"] as? String
        model.code_search_url = dic["code_search_url"] as? String
        model.commit_search_url = dic["commit_search_url"] as? String
        model.emails_url = dic["emails_url"] as? String
        model.emojis_url = dic["emojis_url"] as? String
        model.events_url = dic["events_url"] as? String
        model.feeds_url = dic["feeds_url"] as? String
        model.followers_url = dic["followers_url"] as? String
        model.following_url = dic["following_url"] as? String
        model.gists_url = dic["gists_url"] as? String
        model.hub_url = dic["hub_url"] as? String
        model.issue_search_url = dic["issue_search_url"] as? String
        model.issues_url = dic["issues_url"] as? String
        model.keys_url = dic["keys_url"] as? String
        model.label_search_url = dic["label_search_url"] as? String
        model.notifications_url = dic["notifications_url"] as? String
        model.organization_url = dic["organization_url"] as? String
        model.organization_repositories_url = dic["organization_repositories_url"] as? String
        model.organization_teams_url = dic["organization_teams_url"] as? String
        model.public_gists_url = dic["public_gists_url"] as? String
        model.rate_limit_url = dic["rate_limit_url"] as? String
        model.repository_url = dic["repository_url"] as? String
        model.repository_search_url = dic["repository_search_url"] as? String
        model.current_user_repositories_url = dic["current_user_repositories_url"] as? String
        model.starred_url = dic["starred_url"] as? String
        model.starred_gists_url = dic["starred_gists_url"] as? String
        model.user_url = dic["user_url"] as? String
        model.user_organizations_url = dic["user_organizations_url"] as? String
        model.user_repositories_url = dic["user_repositories_url"] as? String
        model.user_search_url = dic["user_search_url"] as? String
        return model
    }
    
}
