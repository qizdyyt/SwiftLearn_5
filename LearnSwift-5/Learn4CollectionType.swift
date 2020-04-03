//
//  Learn4CollectionType.swift
//  LearnSwift-5
//
//  Created by 祁子栋 on 2020/4/2.
//  Copyright © 2020 祁子栋. All rights reserved.
//

import Foundation
/**
 Swift 提供了三种主要的集合类型，用来储存值，所谓的数组(Array)、集合(Set)还有字典(Dictionary)。
 
 数组是有序的值的集合。集合是唯一值的无序集合。字典是无序的键值对集合。
 
 
 Swift 中的数组、集合和字典总是明确能储存的值的类型以及它们能储存的键。
 就是说你不会意外地插入一个错误类型的值到集合中去。它同样意味着你可以从集合当中取回确定类型的值。

 注意
 Swift 的数组、集合和字典是以泛型集合实现的。要了解更多关于泛型类型和集合，参见泛型。
 */


func collectionType() -> Void {
    
    /*
     集合的可变性
     如果你创建一个数组、集合或者一个字典，并且赋值给一个变量，那么创建的集合就是可变的。这意味着你随后可以通过添加、移除、或者改变集合中的元素来改变（或者说异变）集合。如果你把数组、集合或者字典赋值给一个常量，则集合就成了不可变的，它的大小和内容都不能被改变。

     
     注意
     在集合不需要改变的情况下创建不可变集合是个不错的选择。这样做可以允许 Swift 编译器优化你创建的集合的性能
     
     */
    
    
    
    //============================================================
    
    
    //数组
    //数组以有序的方式来储存相同类型的值。    数组中的值允许重复。
    
    /*
     注意

     Swift 的 Array类型被桥接到了基础框架的 NSArray类上。

     更多关于与基础框架和 Cocoa 一同使用 Array的信息，参考与 Cocoa 和 Objective-C 一起使用 Swift（Swift 3）官方链接:https://developer.apple.com/library/prerelease/content/documentation/Swift/Conceptual/BuildingCocoaApps/index.html#//apple_ref/doc/uid/TP40014216 。
     */
    
    
    /*
     数组类型简写语法
     
     Swift 数组的类型完整写法是 Array<Element>， Element是数组允许存入的值的类型。你同样可以简写数组的类型为 [Element]。尽管两种格式功能上相同，我们更推荐简写并且全书涉及到数组类型的时候都会使用简写。
     */
    
    //创建一个空的数组
    var someInts = [Int]()
    print("someInts is of type [Int] with \(someInts.count) items.")
    
    someInts.append(3)
    
    someInts = []
    
    // someInts is now an empty array, but is still of type [Int]
    
    /**
     使用默认值创建数组
     
     Swift 的 Array类型提供了初始化器来创建确定大小且元素都设定为相同默认值的数组。
     你可以传给初始化器对应类型的默认值（叫做 repeating）和新数组元素的数量（叫做 count）：
     */
    var threeDoubles = Array(repeating: 0.0, count: 3)
    print(threeDoubles) // [0.0, 0.0, 0.0]
    
    //通过连接两个数组来创建数组
    
    //你可以通过把两个兼容类型的现存数组用加运算符（ +）加在一起来创建一个新数组。新数组的类型将从你相加的数组里推断出来：
    var anotherThreeDoubles = Array(repeating: 3.1, count: 3)
    
    var sixDoubles = anotherThreeDoubles + threeDoubles
    print(sixDoubles)
    
    //使用数组字面量创建数组
    
    //你同样可以使用数组字面量来初始化一个数组，它是一种以数组集合来写一个或者多个值的简写方式。数组字面量写做一系列的值，用逗号分隔，用方括号括起来：
    var shoppingList = ["eggs", "milk"]
    
    //因为数组字面量中的值都是相同的类型，Swift 就能够推断 [String]是 shoppingList变量最合适的类型。
    //所以不用完全写成 var shoppingList: [String] = ["Eggs", "Milk"]
    
    
    var couleBeEmpty: [String]?
    if couleBeEmpty?.isEmpty ?? true { //直接加!会出现运行时错误
        print("The couleBeEmpty is empty.")
    } else {
        print("The couleBeEmpty is not empty.")
    }
    
    
    
    //访问和修改数组
    //你可以通过数组的方法和属性来修改数组，或者使用下标脚本语法。
    
    //要得出数组中元素的数量，检查只读的 count属性：
    print("The shoppingList contains \(shoppingList.count) items")
    
    //使用布尔量 isEmpty属性来作为检查 count属性是否等于 0的快捷方式：
    if shoppingList.isEmpty {
        print("The shopping list is empty.")
    } else {
        print("The shopping list is not empty.")
    }
    
    //另外，可以使用加赋值运算符 ( +=)来在数组末尾添加一个或者多个同类型元素：
    shoppingList += ["Baking Powder"]
    // shoppingList now contains 4 items
    print(shoppingList)
    shoppingList += ["Chocolate Spread", "Cheese", "Butter"]
    // shoppingList now contains 7 items
    print(shoppingList)
    
    
    //通过下标脚本语法来从数组当中取回一个值，在紧跟数组名后的方括号内传入你想要取回的值的索引：
    let firstItem = shoppingList[0]
    print(firstItem)
    
    /*
     注意

     数组中的第一个元素的索引为 0，不是 1 .Swift 中的数组都是零开头的。
     */
    
    //你可以使用下标脚本语法来改变给定索引中已经存在的值：
    shoppingList[0] = "chisegg"
    print(shoppingList) //["chisegg", "milk", "Baking Powder", "Chocolate Spread", "Cheese", "Butter"]
    
    //你同样可以使用下标脚本语法来一次改变一个范围的值，就算替换与范围长度不同的值的集合也行。下面的栗子替换用 "Bananas"和 "Apples"替换 "Chocolate Spread", "Cheese", and "Butter"：
    shoppingList[3...5] = ["Bananas", "Apples"]
    print(shoppingList) //["chisegg", "milk", "Baking Powder", "Bananas", "Apples"]
    
    
    //要把元素插入到特定的索引位置，调用数组的 insert(_:at:)方法：
    shoppingList.insert("pradle", at: 0)
    print(shoppingList) //["pradle", "chisegg", "milk", "Baking Powder", "Bananas", "Apples"]
    
    //类似地，你可以使用 remove(at:)方法来移除一个元素。这个方法移除特定索引的元素并且返回它（尽管你不需要的话可以无视返回的值）：
    let removedpradle = shoppingList.remove(at: 0)
    print(removedpradle)
    
    /*
     注意

     如果你访问或者修改一个超出数组边界索引的值，你将会触发运行时错误。你可以在使用索引前通过对比数组的 count属性来检查它。除非当 count为 0（就是说数组为空），否则最大的合法索引永远都是 count - 1，因为数组的索引从零开始。
     */
    
    
    //当数组中元素被移除，任何留下的空白都会被封闭，所以索引 0 的值再一次等于 "chisegg"
    print(shoppingList[0]) //chisegg
    
    //如果你想要移除数组最后一个元素，使用 removeLast()方法而不是 remove(at:)方法以避免查询数组的 count属性。与 remove(at:)方法相同， removeLast()返回删除了的元素：
    shoppingList.removeLast()
    print(shoppingList)
    
    
    
    //遍历一个数组
    for item in shoppingList {
        print(item)
    }
    
    //如果你需要每个元素以及值的整数索引，使用 enumerated()方法来遍历数组。
    //enumerated()方法返回数组中每一个元素的元组，包含了这个元素的索引和值。
    //你可以分解元组为临时的常量或者变量作为遍历的一部分：
    for (index, value) in shoppingList.enumerated() {
        print(index, value)
    }
    
    
    
    //============================================================
    
    //集合 set
    
    //将同一类型且不重复的值无序地储存在一个集合当中。当元素的顺序不那么重要的时候你就可以使用集合来代替数组，或者你需要确保元素不会重复的时候。
    
    /*
     注意

     Swift 的 Set类型桥接到了基础框架的 NSSet类上。

     更多关于与基础框架和 Cocoa 一起使用 Set的信息，见与 Cocoa 和 Objective-C 一起使用 Swift（Swift 3）:
     https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/index.html#//apple_ref/doc/uid/TP40014216
     */
    
    
    //Set 类型的哈希值
    /**
     为了能让类型储存在集合当中，它必须是可哈希的——就是说类型必须提供计算它自身哈希值的方法。哈希值是Int值且所有的对比起来相等的对象都相同，比如 a == b，它遵循 a.hashValue == b.hashValue。
     
     所有 Swift 的基础类型（比如 String, Int, Double, 和 Bool）默认都是可哈希的，并且可以用于集合或者字典的键。
     没有关联值的枚举成员值（如同枚举当中描述的那样）同样默认可哈希。
     */
    
    /*
     注意

     你可以使用你自己自定义的类型作为集合的值类型或者字典的键类型，只要让它们遵循 Swift 基础库的 Hashable协议即可。遵循 Hashable协议的类型必须提供可获取的叫做 hashValue的 Int属性。通过 hashValue属性返回的值不需要在同一个程序的不同的执行当中都相同，或者不同程序。

     因为 Hashable协议遵循 Equatable，遵循的类型必须同时一个“等于”运算符 ( ==)的实现。 Equatable协议需要任何遵循 ==的实现都具有等价关系。就是说， ==的实现必须满足以下三个条件，其中 a, b, 和 c是任意值：

     a == a  (自反性)
     a == b 意味着 b == a  (对称性)
     a == b && b == c 意味着 a == c  (传递性)
     更多对协议的遵循信息，见协议。
     
     */
    
    
    
    //集合类型语法
    //Swift 的集合类型写做 Set<Element>，这里的 Element是集合要储存的类型。不同与数组，集合没有等价的简写。
    
    //创建并初始化一个空集合
//    你可以使用初始化器语法来创建一个确定类型的空集合：
    var letters = Set<Character>()
    print("letters is of type Set<Character> with \(letters.count) items.")
    
    /*
     注意

     letters变量的类型被推断为 Set<Character>，基于初始化器的类型。
     */
    
    //另外，如果内容已经提供了类型信息，比如函数的实际参数或者已经分类的变量常量，
    //你就可以用空的数组字面量来创建一个空集合：
    letters.insert("a")
    print(letters)
    letters = []
    // letters is now an empty set, but is still of type Set<Character>
    print(letters)
    
    
    //使用数组字面量创建集合
    //你同样可以使用数组字面量来初始化一个合集，算是一种写一个或者多个合集值的快捷方式。
    var favoriteGenres: Set<String> = ["Rock", "Classical", "Hip hop"]
    /*
     favoriteGenres变量被声明为“ String值的合集”，写做 Set<String>。由于这个合集已经被明确值类型为 String，它只允许储存 String值。这时，合集 favoriteGenres用三个写在数组字面量中的 String值 ( "Rock", "Classical", 和 "Hip hop")初始化。
     
     合集类型不能从数组字面量推断出来，所以 Set类型必须被显式地声明。总之，由于 Swift 的类型推断，你不需要在使用包含相同类型值的数组字面量初始化合集的时候写合集的类型。 favoriteGenres 的初始化可以写的更短一些：

     var favoriteGenres: Set = ["Rock", "Classical", "Hip hop"]
     */
    
    
    
    
    //访问和修改合集
    //你可以通过合集的方法和属性来访问和修改合集。
    
//    要得出合集当中元素的数量，检查它的只读 count属性：
    print("I have \(favoriteGenres.count) favorite music genres.") //I have 3 favorite music genres.
    
    //使用布尔量 isEmpty属性作为检查 count属性是否等于 0的快捷方式：
    if favoriteGenres.isEmpty {
        print("As far as music goes, I'm not picky.")
    } else {
        print("I have particular music preferences.")
    }
    
    //可通过调用 insert(_:)方法来添加一个新的元素到合集：
    favoriteGenres.insert("Jazz")
    print(favoriteGenres)
    
    
    //可以通过调用合集的 remove(_:)方法来从合集当中移除一个元素，
    //如果元素是合集的成员就移除它，并且返回移除的值，如果合集没有这个成员就返回 nil。另外，合集当中所有的元素可以用 removeAll()一次移除。
    if let removedGenre = favoriteGenres.remove("Rock") {
        print("\(removedGenre)? I'm over it.")
    } else {
        print("I never much cared for that.")
    }
    
    
    //遍历合集
    for genre in favoriteGenres {
        print("\(genre)")
    }
    
    
    //集合排序
    //Swift 的 Set类型是无序的。要以特定的顺序遍历合集的值，使用 sorted()方法，它把合集的元素作为使用 < 运算符排序了的数组返回。
    for genre in favoriteGenres.sorted() {
        print(genre)
    }
    
    
    
    
    
    
    //============================================================
    
    //执行合集操作
    //你可以高效地执行基本地合集操作，比如合并两个合集，确定两个合集共有哪个值，或者确定两个合集是否包含所有、某些或没有相同的值。
    
    
    /*
     基本合集操作
     下边的示例描述了两个合集—— a和 b——在各种合集操作下的结果，用阴影部分表示。
     具体可见图一
     
     使用 intersection(_:)方法来创建一个只包含两个合集共有值的新合集；
     使用 symmetricDifference(_:)方法来创建一个只包含两个合集各自有的非共有值的新合集；
     使用 union(_:)方法来创建一个包含两个合集所有值的新合集；
     使用 subtracting(_:)方法来创建一个两个合集当中不包含某个合集值的新合集。
     */
    
    let oddDigits: Set = [1, 3, 5, 7, 9]
    let evenDigits: Set = [0, 2, 4, 6, 8]
    let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]
     
    print(oddDigits.union(evenDigits).sorted())
    // [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
    print(oddDigits.intersection(evenDigits).sorted())
    // []
    print(oddDigits.subtracting(singleDigitPrimeNumbers).sorted())
    // [1, 9]
    print(oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted())
    // [1, 2, 9]
    
    
    
    /*
     合集成员关系和相等性
     
     下面的示例描述了三个合集—— a， b和 c——用重叠区域代表合集之间值共享。合集 a是合集 b的超集，因为 a包含 b的所有元素。相反地，合集 b是合集 a的子集，因为 b的所有元素被 a包含。合集 b和合集 c是不相交的，因为他们的元素没有相同的。
     见图2
     
     使用“相等”运算符 ( == )来判断两个合集是否包含有相同的值；
     使用 isSubset(of:) 方法来确定一个合集的所有值是被某合集包含；
     使用 isSuperset(of:)方法来确定一个合集是否包含某个合集的所有值；
     使用 isStrictSubset(of:) 或者 isStrictSuperset(of:)方法来确定是个合集是否为某一个合集的子集或者超集，但并不相等；
     使用 isDisjoint(with:)方法来判断两个合集是否拥有完全不同的值。
     
     */
    
    let houseAnimals: Set = ["🐶", "🐱"]
    let farmAnimals: Set = ["🐮", "🐔", "🐑", "🐶", "🐱"]
    let cityAnimals: Set = ["🐦", "🐭"]
     
    print(houseAnimals.isSubset(of: farmAnimals))
    // true
    print(farmAnimals.isSuperset(of: houseAnimals))
    // true
    print(farmAnimals.isDisjoint(with: cityAnimals))
    // true
    
    
    
    
    
    
    
    //============================================================
    
    //字典
    /*
     字典储存无序的互相关联的同一类型的键和同一类型的值的集合。每一个值都与唯一的键相关联，它就好像这个值的身份标记一样。不同于数组中的元素，字典中的元素没有特定的顺序。当你需要查找基于特定标记的值的时候使用字典，很类似现实生活中字典用来查找特定字的定义。

     注意

     Swift 的 Dictionary桥接到了基础框架的 NSDictionary类。

     更多关于与基础框架和 Cocoa 一起使用 Dictionary的信息，见与 Cocoa 和 Objective-C 一起使用 Swift（Swift 3）:
     https://developer.apple.com/library/prerelease/ios/documentation/Swift/Conceptual/BuildingCocoaApps/index.html#//apple_ref/doc/uid/TP40014216
     */
    
    
    //创建一个空字典
    //就像数组，你可以用初始化器语法来创建一个空 Dictionary：

    var namesOfIntegers = [Int: String]()
    
    //如果内容已经提供了信息，你就可以用字典字面量创建空字典了，它写做 [:]（在一对方括号里写一个冒号）：
    namesOfIntegers[16] = "sixteen"
    
    namesOfIntegers = [:]
    
    
    //用字典字面量创建字典
    //同样可以使用字典字面量来初始化一个字典，它与数组字面量看起来差不多。
    //字典字面量是写一个或者多个键值对为 Dictionary集合的快捷方式。
    
    /*
     键值对由一个键和一个值组合而成，每个键值对里的键和值用冒号分隔。键值对写做一个列表，用逗号分隔，并且最终用方括号把它们括起来：

     [key 1: value 1, key 2: value 2, key 3: value 3]
     */
    
    var airports: [String: String] = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
    
    /*
     与数组一样，如果你用一致类型的字典字面量初始化字典，就不需要写出字典的类型了。 airports的初始化就能写的更短：

     var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]
     */
    
    
    //访问和修改字典
    //你可以通过字典自身的方法和属性来访问和修改它，或者通过使用下标脚本语法。
    
    
    //如同数组，你可以使用 count只读属性来找出 Dictionary拥有多少元素：
    print("The airports dictionary contains \(airports.count) items.")
    
    //使用布尔量 isEmpty属性作为检查 count属性是否等于 0的快捷方式
    if airports.isEmpty {
        print("The airports dictionary is empty.")
    } else {
        print("The airports dictionary is not empty.")
    }
    
    //可以用下标脚本给字典添加新元素。使用正确类型的新键作为下标脚本的索引，然后赋值一个正确类型的值：
    airports["LHR"] = "LonDon"
    print(airports)
    
    //同样可以使用下标脚本语法来改变特定键关联的值：
    airports["LHR"] = "London Heathrow"
    print(airports)
    
    
    
    /*
     作为下标脚本的代替，使用字典的 updateValue(_:forKey:)方法来设置或者更新特点键的值。就像上边下标脚本的栗子， updateValue(_:forKey:)方法会在键没有值的时候设置一个值，或者在键已经存在的时候更新它。
     
     总之，不同于下标脚本， updateValue(_:forKey:)方法在执行更新之后返回旧的值。这允许你检查更新是否成功。
     
     updateValue(_:forKey:)方法返回一个字典值类型的可选项值。比如对于储存 String值的字典来说，方法会返回 String?类型的值，或者说“可选的 String”。这个可选项包含了键的旧值如果更新前存在的话，否则就是 nil：
     */
    
    if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
        print("The old value for DUB was \(oldValue).")
    }
    
    
    /*
     你同样可以使用下标脚本语法来从字典的特点键中取回值。由于可能请求的键没有值，字典的下标脚本返回可选的字典值类型。如果字典包含了请求的键的值，下标脚本就返回一个包含这个键的值的可选项。否则，下标脚本返回 nil ：
     */
    if let airportName = airports["DUB"] {
        print("The name of the airport is \(airportName).")
    } else {
        print("That airport is not in the airports dictionary.")
    }
    
    
    //你可以使用下标脚本语法给一个键赋值 nil来从字典当中移除一个键值对：

    airports["APL"] = "Apple International"
    // "Apple International" is not the real airport for APL, so delete it
    airports["APL"] = nil
    
    //另外，使用 removeValue(forKey:)来从字典里移除键值对。
    //这个方法移除键值对如果他们存在的话，并且返回移除的值，如果值不存在则返回 nil：
    if let removedValue = airports.removeValue(forKey: "DUB") {
        print("The removed airport's name is \(removedValue).")
    } else {
        print("The airports dictionary does not contain a value for DUB.")
    }
    
    
    
    
    //遍历字典
    //你可以用 for-in循环来遍历字典的键值对。
    //字典中的每一个元素返回为 (key, value)元组，你可以解开元组成员到临时的常量或者变量作为遍历的一部分：
    for (airportCode, airportName) in airports {
        print("\(airportCode): \(airportName)")
    }
    
    //你同样可以通过访问字典的 keys和 values属性来取回可遍历的字典的键或值的集合：
    for airportCode in airports.keys {
        print("Airport code: \(airportCode)")
    }
    // Airport code: YYZ
    // Airport code: LHR
     
    for airportName in airports.values {
        print("Airport name: \(airportName)")
    }
    // Airport name: Toronto Pearson
    // Airport name: London Heathrow
    
    
    
    //如果你需要和接收 Array实例的 API 一起使用字典的键或值，就用 keys或 values属性来初始化一个新数组：

    let airportCodes = airports.keys
    // airportCodes is ["YYZ", "LHR"]
    let airportNames = [String](airports.values)
    
    print(airportCodes, airportNames)
    // airportNames is ["Toronto Pearson", "London Heathrow"]
    

    //Swift 的 Dictionary类型是无序的。要以特定的顺序遍历字典的键或值，使用键或值的 sorted()方法。
    
    //============================================================
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //============================================================
    
}
