/* Copyright 2018 Tua Rua Ltd.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 */

import Foundation

/// FreObjectSwift: Wraps a FREObject in a dynamicMemberLookup which allows us to perform easy gets and sets of
/// it's properties
@dynamicMemberLookup
open class FreObjectSwift: NSObject {
    /// rawValue: raw FREObject value
    public var rawValue: FREObject?
    
    /// value:
    open var value: Any? {
        return FreSwiftHelper.getAsId(rawValue)
    }
    
    /// hasOwnProperty: Indicates whether an object has a specified property defined.
    ///
    /// ```swift
    /// if argv[0].hasOwnProperty("name") {
    ///
    /// }
    /// ```
    /// - parameter name: The property of the FREObject.
    /// - returns: Bool
    public func hasOwnProperty(name: String) -> Bool {
        return rawValue?.hasOwnProperty(name: name) ?? false
    }

    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let firstName: String = freCoord.firstName
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: String?
    public subscript(dynamicMember name: String) -> FREObject? {
        get { return rawValue?[name]}
        set { rawValue?[name] = newValue }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let middleName: String? = freCoord.middleName
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: String?
    public subscript(dynamicMember name: String) -> String? {
        get { return String(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let isRightHanded: Bool? = freCoord.isRightHanded
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: Bool?
    public subscript(dynamicMember name: String) -> Bool? {
        get { return Bool(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let isRightHanded: Bool = freCoord.isRightHanded
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: Bool
    public subscript(dynamicMember name: String) -> Bool {
        get { return Bool(rawValue?[name]) ?? false }
        set { rawValue?[name] = newValue.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let children: Int? = freCoord.children
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: Int?
    public subscript(dynamicMember name: String) -> Int? {
        get { return Int(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let children: Int = freCoord.children
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: Int
    public subscript(dynamicMember name: String) -> Int {
        get { return Int(rawValue?[name]) ?? 0 }
        set { rawValue?[name] = newValue.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let children: UInt? = freCoord.children
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: UInt?
    public subscript(dynamicMember name: String) -> UInt? {
        get { return UInt(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let children: UInt = freCoord.children
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: UInt
    public subscript(dynamicMember name: String) -> UInt {
        get { return UInt(rawValue?[name]) ?? 0 }
        set { rawValue?[name] = newValue.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let children: NSNumber? = freCoord.children
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: NSNumber?
    public subscript(dynamicMember name: String) -> NSNumber? {
        get { return NSNumber(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let children: NSNumber = freCoord.children
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: NSNumber
    public subscript(dynamicMember name: String) -> NSNumber {
        get { return NSNumber(rawValue?[name]) ?? 0 }
        set { rawValue?[name] = newValue.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let height: CGFloat? = frePerson.height
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: CGFloat?
    public subscript(dynamicMember name: String) -> CGFloat? {
        get { return CGFloat(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let height: CGFloat = frePerson.height
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: CGFloat
    public subscript(dynamicMember name: String) -> CGFloat {
        get { return CGFloat(rawValue?[name]) ?? 0 }
        set { rawValue?[name] = newValue.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let height: Float? = frePerson.height
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: Float
    public subscript(dynamicMember name: String) -> Float? {
        get { return Float(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let height: Float = frePerson.height
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: Float
    public subscript(dynamicMember name: String) -> Float {
        get { return Float(rawValue?[name]) ?? 0 }
        set { rawValue?[name] = newValue.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let height: Double = frePerson.height
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: Double
    public subscript(dynamicMember name: String) -> Double? {
        get { return Double(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let frePerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let height: Double = frePerson.height
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: Double?
    public subscript(dynamicMember name: String) -> Double {
        get { return Double(rawValue?[name]) ?? 0 }
        set { rawValue?[name] = newValue.toFREObject() }
    }
    
    /// subscript: gets the Property of a FREObject.
    ///
    /// ```swift
    /// let freRoom = FreObjectSwift(className: "com.tuarua.Room")
    /// let dimensions: CGRect? = newPerson.dimensions
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: CGRect?
    public subscript(dynamicMember name: String) -> CGRect? {
        get { return CGRect(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let freCoord = FreObjectSwift(className: "com.tuarua.Coordinate")
    /// let coord: CGPoint = freCoord.coordinates
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: CGPoint?
    public subscript(dynamicMember name: String) -> CGPoint? {
        get { return CGPoint(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let newPerson = FreObjectSwift(className: "com.tuarua.Person")
    /// let myName: String = newPerson.birthday
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: Date?
    public subscript(dynamicMember name: String) -> Date? {
        get { return Date(rawValue?[name]) }
        set { rawValue?[name] = newValue?.toFREObject() }
    }
    
    /// subscript: sets/gets the Property of a FREObject.
    ///
    /// ```swift
    /// let newPerson = FreObjectSwift(className: "com.tuarua.Person", args: 1, true, "Free")
    /// let myName = newPerson["name"]
    /// ```
    /// - parameter name: name of the property to return
    /// - returns: FREObject?
    public subscript(_ name: String) -> FREObject? {
        get {
            return self.rawValue?[name]
        }
        set {
            self.rawValue?[name] = newValue
        }
    }

    /// init: Creates a new FreObjectSwift
    /// - parameter freObject: FREObject to wrap
    public init(_ freObject: FREObject?) {
        super.init()
        rawValue = freObject
    }
    
    /// init: Creates a new FreObjectSwift.
    ///
    /// ```swift
    /// let newPerson = FreObjectSwift(className: "com.tuarua.Person", args: 1, true, "Free")
    /// ```
    /// - parameter className: name of AS3 class to create
    /// - parameter args: arguments to use. These are automatically converted to FREObjects
    public convenience init?(className: String, args: Any?...) {
        let argsArray: NSPointerArray = NSPointerArray(options: .opaqueMemory)
        for i in 0..<args.count {
            argsArray.addPointer(FreSwiftHelper.newObject(any: args[i]))
        }
        if let rv = FreSwiftHelper.newObject(className: className, argsArray) {
            self.init(rv)
        } else {
            return nil
        }
    }
    
    /// init: Creates a new FreObjectSwift.
    ///
    /// ```swift
    /// let newPerson = FreObjectSwift(className: "com.tuarua.Person")
    /// ```
    /// - parameter className: name of AS3 class to create
    public convenience init?(className: String) {
        if let rv = FreSwiftHelper.newObject(className: className) {
            self.init(rv)
        } else {
            return nil
        }
    }

}
