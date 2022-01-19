//
//  AppProtectionCompliance.swift
//  AppProtectionLib
//
//  Created by shaik riyaz on 19/01/22.
//

import Foundation

public final class AppProtectionCompliance {
    
    public func isJailbroken() -> Bool {
        
        let jailbrokenPath = [
            "/Applications/Cydia.app",
            "/Applications/RockApp.app",
            "/Applications/Icy.app",
            "/Applications/WinterBoard.app",
            "/Applications/SBSettings.app",
            "/Applications/MxTube.app",
            "/Applications/IntelliScreen.app",
            "/Library/MobileSubstrate/DynamicLibraries/Veency.plist",
            "/Applications/FakeCarrier.app",
            "/Library/MobileSubstrate/DynamicLibraries/LiveClock.plist",
            "/private/var/lib/apt",
            "/Applications/blackra1n.app",
            "/private/var/stash",
            "/private/var/mobile/Library/SBSettings/Themes",
            "/System/Library/LaunchDaemons/com.ikey.bbot.plist",
            "/System/Library/LaunchDaemons/com.saurik.Cydia.Startup.plist",
            "/private/var/tmp/cydia.log",
            "/private/var/lib/cydia",
            "net.sticktron.g0blin",
            "zone.sparkes.MeridianJB",
            "com.newosxbook.qilin.LiberiOS--",
            "org.tihmstar.h3lix org.coolstar.electra"
        ]
        
        var isJailBroken = false
        
        for path in jailbrokenPath {
            let fileExists = FileManager.default.fileExists(atPath: path)
            if fileExists {
                isJailBroken = true
                break
            }
        }
        
        return isJailBroken
    }
    
}
