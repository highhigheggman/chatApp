//
// This is a generated file, do not edit!
// Generated by R.swift, see https://github.com/mac-cain13/R.swift
//

import Foundation
import Rswift
import UIKit

/// This `R` struct is generated and contains references to static resources.
struct R: Rswift.Validatable {
  fileprivate static let applicationLocale = hostingBundle.preferredLocalizations.first.flatMap(Locale.init) ?? Locale.current
  fileprivate static let hostingBundle = Bundle(for: R.Class.self)
  
  static func validate() throws {
    try intern.validate()
  }
  
  /// This `R.nib` struct is generated, and contains static references to 3 nibs.
  struct nib {
    /// Nib `MyChatTableViewCell`.
    static let myChatTableViewCell = _R.nib._MyChatTableViewCell()
    /// Nib `UserTableViewCell`.
    static let userTableViewCell = _R.nib._UserTableViewCell()
    /// Nib `YourChatTableViewCell`.
    static let yourChatTableViewCell = _R.nib._YourChatTableViewCell()
    
    /// `UINib(name: "MyChatTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.myChatTableViewCell) instead")
    static func myChatTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.myChatTableViewCell)
    }
    
    /// `UINib(name: "UserTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.userTableViewCell) instead")
    static func userTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.userTableViewCell)
    }
    
    /// `UINib(name: "YourChatTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.yourChatTableViewCell) instead")
    static func yourChatTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.yourChatTableViewCell)
    }
    
    static func myChatTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> MyChatTableViewCell? {
      return R.nib.myChatTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MyChatTableViewCell
    }
    
    static func userTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UserTableViewCell? {
      return R.nib.userTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UserTableViewCell
    }
    
    static func yourChatTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> YourChatTableViewCell? {
      return R.nib.yourChatTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? YourChatTableViewCell
    }
    
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 1 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `UserTableViewCell`.
    static let userTableViewCell: Rswift.ReuseIdentifier<UserTableViewCell> = Rswift.ReuseIdentifier(identifier: "UserTableViewCell")
    
    fileprivate init() {}
  }
  
  /// This `R.storyboard` struct is generated, and contains static references to 2 storyboards.
  struct storyboard {
    /// Storyboard `LaunchScreen`.
    static let launchScreen = _R.storyboard.launchScreen()
    /// Storyboard `Main`.
    static let main = _R.storyboard.main()
    
    /// `UIStoryboard(name: "LaunchScreen", bundle: ...)`
    static func launchScreen(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.launchScreen)
    }
    
    /// `UIStoryboard(name: "Main", bundle: ...)`
    static func main(_: Void = ()) -> UIKit.UIStoryboard {
      return UIKit.UIStoryboard(resource: R.storyboard.main)
    }
    
    fileprivate init() {}
  }
  
  fileprivate struct intern: Rswift.Validatable {
    fileprivate static func validate() throws {
      try _R.validate()
    }
    
    fileprivate init() {}
  }
  
  fileprivate class Class {}
  
  fileprivate init() {}
}

struct _R: Rswift.Validatable {
  static func validate() throws {
    try storyboard.validate()
  }
  
  struct nib {
    struct _MyChatTableViewCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "MyChatTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> MyChatTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MyChatTableViewCell
      }
      
      fileprivate init() {}
    }
    
    struct _UserTableViewCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "UserTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UserTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UserTableViewCell
      }
      
      fileprivate init() {}
    }
    
    struct _YourChatTableViewCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "YourChatTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> YourChatTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? YourChatTableViewCell
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  struct storyboard: Rswift.Validatable {
    static func validate() throws {
      try launchScreen.validate()
      try main.validate()
    }
    
    struct launchScreen: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UIViewController
      
      let bundle = R.hostingBundle
      let name = "LaunchScreen"
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
      }
      
      fileprivate init() {}
    }
    
    struct main: Rswift.StoryboardResourceWithInitialControllerType, Rswift.Validatable {
      typealias InitialController = UIKit.UINavigationController
      
      let bundle = R.hostingBundle
      let name = "Main"
      let roomListPage = StoryboardViewControllerResource<UserListPageViewController>(identifier: "RoomListPage")
      let userListPage = StoryboardViewControllerResource<UserListPageViewController>(identifier: "UserListPage")
      
      func roomListPage(_: Void = ()) -> UserListPageViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: roomListPage)
      }
      
      func userListPage(_: Void = ()) -> UserListPageViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: userListPage)
      }
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
        if _R.storyboard.main().roomListPage() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'roomListPage' could not be loaded from storyboard 'Main' as 'UserListPageViewController'.") }
        if _R.storyboard.main().userListPage() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'userListPage' could not be loaded from storyboard 'Main' as 'UserListPageViewController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
