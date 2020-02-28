//
//  ThemeHelper.swift
//  iOSPhotoCollection
//
//  Created by Bhawnish Kumar on 2/27/20.
//  Copyright © 2020 Bhawnish Kumar. All rights reserved.
//

import Foundation

class ThemeHelper {
    static let themePreferenceKey = "themePreferenceKey"

    var themePreference: String? {
        
        func setThemePreferenceToDark() {
                UserDefaults.standard.set("Dark", forKey: "themePreferenceKey")
        }

        func setThemePreferenceToYourColorHere() {
                UserDefaults.standard.set("Blue", forKey: "themePreferenceKey")
        }
        
        let themePreferenceSaved = UserDefaults.standard.string(forKey: "Dark")
        
        if themePreferenceSaved == nil {
            setThemePreferenceToDark()
        } else {
            setThemePreferenceToYourColorHere()
        }
        
        return themePreferenceSaved
        
    }

}

