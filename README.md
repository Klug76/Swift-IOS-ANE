# SwiftIOSANE  

Example Xcode project showing how to programme Air Native Extensions for iOS using Swift.

This project contains a translation of FlashRuntimeExtensions to Swift.
It is comprised of 2 parts.

1. A static library which exposes methods to AIR and a thin ObjectiveC API layer to the Swift code. 
2. A dynamic Swift Framework which contains the main logic of the ANE.

> To allow FRE functions to be called from within Swift, a protocol acting 
> as a bridge back to Objective C ,was used.

----------

### How to use
Example - Converting a FREObject into a String

````swift
var ret: String = ""
var len: UInt32 = 0
let status: FREResult = FREGetObjectAsUTF8(object: object, length: &len, value: &ret)

var freObject: FREObject? = nil
let status: FREResult = FRENewObjectFromUTF8(length: UInt32(string.utf8.count), value: ret, object: &freObject);
`````

Example - Converting a FREObject into a String the easy way, using ANEHelper.swift


````swift
let swiftString: String = aneHelper.getString(object: object)
let airString: FREObject = aneHelper.getFREObject(string: swiftString)!
trace("Swift string is:", swiftString)
`````

Example - call a method on an FREObject

````swift
let paramsArray: NSPointerArray = NSPointerArray(options: .opaqueMemory)
var addition: FREObject? = nil
var thrownException: FREObject? = nil
for i in 0 ..< params.count {
    let param: FREObject? = getFREObject(any: params[i])
    paramsArray.addPointer(param)
}

let status: FREResult = FRECallObjectMethod(object: myClass, methodName: "add",
    argc: UInt32(paramsArray.count), argv: paramsArray, result: &addition,
    thrownException: &thrownException)
`````

Example - call a method on an FREObject the (very) easy way, using ANEHelper.swift
````swift
let addition: FREObject? = aneHelper.call(object: myClass, methodName: "add", params: 100, 33)
`````

----------
### Running on Simulator

The example project can be run on the Simulator from IntelliJ

### Running on Device !

The example project needs to be built and signed in the correct manner.
An AIR based packaging tool is provided in /packager/AIR_ios_packager.dmg

The option to install and debug on the device is included within the tool.
The AIR tool fdb (Flash debugger) is used for debugging. This is only applicable when "Debug over network" is chosen

![alt tag](https://github.com/tuarua/SwiftIOSANE/blob/master/screenshots/1.png)


![alt tag](https://github.com/tuarua/SwiftIOSANE/blob/master/screenshots/2.png)

### Prerequisites

You will need

- Xcode 8.2 / AppCode
- IntelliJ IDEA
- AIR 25 Beta SDK

### NOTES
The code is likely to change as I tidy and improve things especially guard checks on optionals

### TODO
Methods marked in bold are **IMPLEMENTED**

FREAcquireBitmapData()  
FREAcquireBitmapData2()  
FREAcquireByteArray()  
**FRECallObjectMethod()**  
**FREDispatchStatusEventAsync()**  
**FREGetArrayElementAt()**  
**FREGetArrayLength()**  
FREGetContextActionScriptData()  
FREGetContextNativeData()  
**FREGetObjectAsBool()**  
**FREGetObjectAsDouble()**  
**FREGetObjectAsInt32()**  
**FREGetObjectAsUint32()**  
**FREGetObjectAsUTF8()**  
**FREGetObjectProperty()**  
**FREGetObjectType()**  
FREInvalidateBitmapDataRect()  
**FRENewObject()**  
**FRENewObjectFromBool()**  
**FRENewObjectFromDouble()**  
**FRENewObjectFromInt32()**  
**FRENewObjectFromUint32()**  
**FRENewObjectFromUTF8()**  
FREReleaseBitmapData()  
FREReleaseByteArray()  
**FRESetArrayElementAt()**  
**FRESetArrayLength()**  
FRESetContextActionScriptData()  
FRESetContextNativeData()  
**FRESetObjectProperty()**
