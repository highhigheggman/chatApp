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
  
  /// This `R.nib` struct is generated, and contains static references to 5 nibs.
  struct nib {
    /// Nib `AddRoomTableViewCell`.
    static let addRoomTableViewCell = _R.nib._AddRoomTableViewCell()
    /// Nib `MyChatTableViewCell`.
    static let myChatTableViewCell = _R.nib._MyChatTableViewCell()
    /// Nib `RoomTableViewCell`.
    static let roomTableViewCell = _R.nib._RoomTableViewCell()
    /// Nib `UserTableViewCell`.
    static let userTableViewCell = _R.nib._UserTableViewCell()
    /// Nib `YourChatTableViewCell`.
    static let yourChatTableViewCell = _R.nib._YourChatTableViewCell()
    
    /// `UINib(name: "AddRoomTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.addRoomTableViewCell) instead")
    static func addRoomTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.addRoomTableViewCell)
    }
    
    /// `UINib(name: "MyChatTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.myChatTableViewCell) instead")
    static func myChatTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.myChatTableViewCell)
    }
    
    /// `UINib(name: "RoomTableViewCell", in: bundle)`
    @available(*, deprecated, message: "Use UINib(resource: R.nib.roomTableViewCell) instead")
    static func roomTableViewCell(_: Void = ()) -> UIKit.UINib {
      return UIKit.UINib(resource: R.nib.roomTableViewCell)
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
    
    static func addRoomTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> AddRoomTableViewCell? {
      return R.nib.addRoomTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? AddRoomTableViewCell
    }
    
    static func myChatTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> MyChatTableViewCell? {
      return R.nib.myChatTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MyChatTableViewCell
    }
    
    static func roomTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> RoomTableViewCell? {
      return R.nib.roomTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? RoomTableViewCell
    }
    
    static func userTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> UserTableViewCell? {
      return R.nib.userTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? UserTableViewCell
    }
    
    static func yourChatTableViewCell(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> YourChatTableViewCell? {
      return R.nib.yourChatTableViewCell.instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? YourChatTableViewCell
    }
    
    fileprivate init() {}
  }
  
  /// This `R.reuseIdentifier` struct is generated, and contains static references to 5 reuse identifiers.
  struct reuseIdentifier {
    /// Reuse identifier `AddRoomTableViewCell`.
    static let addRoomTableViewCell: Rswift.ReuseIdentifier<AddRoomTableViewCell> = Rswift.ReuseIdentifier(identifier: "AddRoomTableViewCell")
    /// Reuse identifier `MyChatTableViewCell`.
    static let myChatTableViewCell: Rswift.ReuseIdentifier<MyChatTableViewCell> = Rswift.ReuseIdentifier(identifier: "MyChatTableViewCell")
    /// Reuse identifier `RoomTableViewCell`.
    static let roomTableViewCell: Rswift.ReuseIdentifier<RoomTableViewCell> = Rswift.ReuseIdentifier(identifier: "RoomTableViewCell")
    /// Reuse identifier `UserTableViewCell`.
    static let userTableViewCell: Rswift.ReuseIdentifier<UserTableViewCell> = Rswift.ReuseIdentifier(identifier: "UserTableViewCell")
    /// Reuse identifier `YourChatTableViewCell`.
    static let yourChatTableViewCell: Rswift.ReuseIdentifier<YourChatTableViewCell> = Rswift.ReuseIdentifier(identifier: "YourChatTableViewCell")
    
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
    struct _AddRoomTableViewCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "AddRoomTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> AddRoomTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? AddRoomTableViewCell
      }
      
      fileprivate init() {}
    }
    
    struct _MyChatTableViewCell: Rswift.NibResourceType {
      let bundle = R.hostingBundle
      let name = "MyChatTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> MyChatTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? MyChatTableViewCell
      }
      
      fileprivate init() {}
    }
    
    struct _RoomTableViewCell: Rswift.NibResourceType, Rswift.ReuseIdentifierType {
      typealias ReusableType = RoomTableViewCell
      
      let bundle = R.hostingBundle
      let identifier = "RoomTableViewCell"
      let name = "RoomTableViewCell"
      
      func firstView(owner ownerOrNil: AnyObject?, options optionsOrNil: [UINib.OptionsKey : Any]? = nil) -> RoomTableViewCell? {
        return instantiate(withOwner: ownerOrNil, options: optionsOrNil)[0] as? RoomTableViewCell
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
      
      let addRoomPageViewController = StoryboardViewControllerResource<AddRoomPageViewController>(identifier: "AddRoomPageViewController")
      let bundle = R.hostingBundle
      let chatPageViewController = StoryboardViewControllerResource<ChatPageViewController>(identifier: "ChatPageViewController")
      let name = "Main"
      let navigationController = StoryboardViewControllerResource<UIKit.UINavigationController>(identifier: "navigationController")
      let roomListPageViewController = StoryboardViewControllerResource<RoomListPageViewController>(identifier: "RoomListPageViewController")
      let userListPageViewController = StoryboardViewControllerResource<UserListPageViewController>(identifier: "UserListPageViewController")
      
      func addRoomPageViewController(_: Void = ()) -> AddRoomPageViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: addRoomPageViewController)
      }
      
      func chatPageViewController(_: Void = ()) -> ChatPageViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: chatPageViewController)
      }
      
      func navigationController(_: Void = ()) -> UIKit.UINavigationController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: navigationController)
      }
      
      func roomListPageViewController(_: Void = ()) -> RoomListPageViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: roomListPageViewController)
      }
      
      func userListPageViewController(_: Void = ()) -> UserListPageViewController? {
        return UIKit.UIStoryboard(resource: self).instantiateViewController(withResource: userListPageViewController)
      }
      
      static func validate() throws {
        if #available(iOS 11.0, *) {
        }
        if _R.storyboard.main().addRoomPageViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'addRoomPageViewController' could not be loaded from storyboard 'Main' as 'AddRoomPageViewController'.") }
        if _R.storyboard.main().chatPageViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'chatPageViewController' could not be loaded from storyboard 'Main' as 'ChatPageViewController'.") }
        if _R.storyboard.main().roomListPageViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'roomListPageViewController' could not be loaded from storyboard 'Main' as 'RoomListPageViewController'.") }
        if _R.storyboard.main().userListPageViewController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'userListPageViewController' could not be loaded from storyboard 'Main' as 'UserListPageViewController'.") }
        if _R.storyboard.main().navigationController() == nil { throw Rswift.ValidationError(description:"[R.swift] ViewController with identifier 'navigationController' could not be loaded from storyboard 'Main' as 'UIKit.UINavigationController'.") }
      }
      
      fileprivate init() {}
    }
    
    fileprivate init() {}
  }
  
  fileprivate init() {}
}
