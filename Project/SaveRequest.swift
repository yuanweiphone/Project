//
//  SaveRequest.swift
//  Project
//
//  Created by 苑伟 on 2021/2/20.
//

import UIKit

let KSaveRequest = "SaveRequest"

class SaveRequest: NSObject,NSCoding,NSSecureCoding {
    
    var dateTime: String?

    static var supportsSecureCoding: Bool = true

    override init() { }
    
    func encode(with aCoder: NSCoder) {
        
        aCoder.encode(dateTime, forKey: "dateTime")
    }
    
    required init?(coder aDecoder: NSCoder) {
        
        dateTime = aDecoder.decodeObject(forKey: "dateTime") as? String
    }
    
    class func saveData(_ array: [SaveRequest]) {
        
        let data = try? NSKeyedArchiver.archivedData(withRootObject: array, requiringSecureCoding: true)
        do {
            UserDefaults.standard.set(data, forKey: KSaveRequest)
        }
    }
    
    class func getData() -> [SaveRequest]? {
        
        let resultData = UserDefaults.standard.data(forKey: KSaveRequest)
        if let data = resultData {
            let resultArray = try? NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data)
            do {
                return resultArray as? [SaveRequest]
            }
        }
        return nil
    }
    
}
