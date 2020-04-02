//
//  Learn3StringAndCharacter.swift
//  LearnSwift-5
//
//  Created by 祁子栋 on 2020/4/1.
//  Copyright © 2020 祁子栋. All rights reserved.
//

import Foundation
/**
 字符串是一系列的字符，比如说 "hello, world"或者 "albatross"。Swift 的字符串用 String类型来表示。 String的内容可以通过各种方法来访问到，包括作为 Character值的集合。

 Swift 的 String  和 Character  类型提供了一种快速的符合 Unicode 的方式操作你的代码。字符串的创建和修改语法非常轻量易读，使用与 C 类似的字符串字面量语法。
 字符串串联只需要使用 +运算符即可，字符串的可修改能力通过选择常量和变量来进行管理，就如同 Swift 语言中的其他值。
 
 你同样可以使用字符串来插入常量、变量、字面量以及表达式到更长的字符串当中，这就是所谓的字符串插值。这样让创建自定义字符串值来显示、储存和打印值变得更加简单。

 别看语法简单，Swift 的 String类型仍旧是快速和现代的字符串实现。每一个字符串都是由 Unicode 字符的独立编码组成，并且提供了多种 Unicode 表示下访问这些字符的支持。
 
 
 注意

 Swift 的 String类型桥接到了基础库中的 NSString类。Foundation 同时也扩展了所有 NSString 定义的方法给 String 。也就是说，如果你导入 Foundation ，就可以在 String 中访问所有的 NSString  方法，无需转换格式。

 更多在 Foundation 和 Cocoa 框架中使用 String的内容，参见 与 Cocoa 和 Objective-C 一起使用 Swift(https://developer.apple.com/library/content/documentation/Swift/Conceptual/BuildingCocoaApps/index.html#//apple_ref/doc/uid/TP40014216)
 */

func stringsAndCharacters() -> Void {
    
    //字符串字面量
    /**
     你可以在你的代码中插入预先写好的 String值作为字符串字面量。字符串字面量是被双引号（ "）包裹的固定顺序文本字符。

     使用字符串字面量作为常量或者变量的初始值：
     */
    let someString = "asasiodhvoasn"
    print(someString)
    
  //////////////////////////////////////////////////////
    
    
    //多行字符串字面量
    //如果你需要很多行的字符串，使用多行字符串字面量。多行字符串字面量是用三个双引号引起来的一系列字符：
    let singleLineString = "single line string"
    
    //注意开头必须是“”“并且另起一行开始字符串
    let multilineString = """
123123
ss
aa

as
multilineString
"""
    print(singleLineString, multilineString)
    /*
     single line string 123123
     ss
     aa

     as
     multilineString
     */
    
    //当你的代码中在多行字符串字面量里包含了换行，那个换行符同样会成为字符串里的值。
    //如果你想要使用换行符来让你的代码易读，却不想让换行符成为字符串的值，那就在那些行的末尾使用反斜杠（ \ ）：
    let softWrappedQuotation = """
    The White Rabbit put on his spectacles.  "Where shall I begin, \
    please your Majesty?" he asked.
     
    "Begin at the beginning," the King said gravely, "and go on \
    till you come to the end; then stop."
    """
    print(softWrappedQuotation)
    /*
     结果：
     The White Rabbit put on his spectacles.  "Where shall I begin, please your Majesty?" he asked.
      
     "Begin at the beginning," the King said gravely, "and go on till you come to the end; then stop."
     */
    
    
    /*
     多行字符串可以缩进以匹配周围的代码。双引号（ """ ）前的空格会告诉 Swift 其他行前应该有多少空白是需要忽略的。比如说，尽管下面函数中多行字符串字面量缩进了，但实际上字符串不会以任何空白开头。
     
     总而言之，就是符合代码缩进规范的空格不会包含到字符串(直接敲回车的位置)，额外加的空格才会
     
     */
    let linesWithIndentation = """
这一行前面实际没空格
          这一行就会有
"""
    print(linesWithIndentation)
    
      //////////////////////////////////////////////////////
    
    
    
    
    
    
    
    //字符串字面量里的特殊字符
    /**
     字符串字面量能包含以下特殊字符：

     转义特殊字符 \0 (空字符)， \\ (反斜杠)， \t (水平制表符)， \n (换行符)， \r(回车符)， \" (双引号) 以及 \' (单引号)；
     
     任意的 Unicode 标量，写作 \u{n}，里边的 n是一个 1-8 个与合法 Unicode 码位相等的16进制数字。
     */
    
    //下边的代码展示了这些特殊字符的四个栗子。 wiseWords常量包含了两个转义双引号字符。 dollarSign， blackHeart和 sparklingHeart常量展示了 Unicode 标量格式：
    let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"
    // "Imagination is more important than knowledge" - Einstein
    let dollarSign = "\u{24}" // $, Unicode scalar U+0024
    let blackHeart = "\u{2665}" // ♥, Unicode scalar U+2665
    let sparklingHeart = "\u{1F496}" // 💖️, Unicode scalar U+1F496
    print(wiseWords, dollarSign, blackHeart, sparklingHeart)
    
    
    //由于多行字符串字面量使用三个双引号而不是一个作为标记，你可以在多行字符串字面量中包含双引号（ " ）而不需转义。要在多行字符串中包含文本 """ ，转义至少一个双引号。比如说：
    let threeDoubleQuotationMarks = """
    Escaping the first quotation mark \"""
    Escaping all three quotation marks \"\"\"
    """
    print(threeDoubleQuotationMarks)
    /*
     Escaping the first quotation mark """
     Escaping all three quotation marks """
     */
    
      //////////////////////////////////////////////////////
    
    
    
    //扩展字符分隔符       --------使转义字符失效，直接使用当前字符
    
    /**
     你可以在字符串字面量中放置扩展分隔符来在字符串中包含特殊字符而不让它们真的生效。通过把字符串放在双引号（ " ）内并由井号（ # ）包裹。比如说，打印字符串字面量 #"Line 1\nLine 2"# 会打印出换行符 \n 而不是打印出两行。
     */
    //例如:
    /*
    Line 1
    Line 2
    */
    print("Line 1\nLine 2")
    
    //Line 1\nLine 2
    print(#"Line 1\nLine 2"#)
    
    
    //使用扩展分隔符创建的字符串字面量同样可以使用多行字符串字面量。你可以在多行字符串字面量中使用扩展分隔符来包含文本 """ ，从而避免让它结束字面量。
    print(#"""
    Here are three more double quotes: """
    """#)//Here are three more double quotes: """
    
    
      //////////////////////////////////////////////////////
    
    //初始化一个空字符串
    //为了绑定一个更长的字符串，要在一开始创建一个空的 String值，要么赋值一个空的字符串字面量给变量，要么使用初始化器语法来初始化一个新的 String实例：
    let emptySttring = ""
    let anotherEmptyString = String()
    
    //这两个空的字符串都是相等的
    if emptySttring as AnyObject === anotherEmptyString as AnyObject {
        print("emptySttring 等于 anotherEmptyString")
    }
    
    //通过检查布尔量 isEmpty属性来确认一个 String值是否为空：
    if emptySttring.isEmpty {
        print("Nothing to see here")
    }
    
    
    
    
    //////////////////////////////////////////////////////
    
    /*
     字符串可变性
     你可以通过把一个 String设置为变量（这里指可被修改），或者为常量（不能被修改）来指定它是否可以被修改（或者改变）：
     */
    var variableString = "Horse"
    variableString += " and carriage"
    
    let constantString = "Highlander"
//    constantString = "Highlander"//报错
    
    
    
    
    
    
    //////////////////////////////////////////////////////
    
    //字符串是值类型
    
    /**
     Swift 的 String类型是一种值类型。如果你创建了一个新的 String值， String值在传递给方法或者函数的时候会被复制过去，还有赋值给常量或者变量的时候也是一样。每一次赋值和传递，现存的 String值都会被复制一次，传递走的是拷贝而不是原本。值类型在结构体和枚举是值类型一章当中有详细描述。

     Swift 的默认拷贝 String行为保证了当一个方法或者函数传给你一个 String值，你就绝对拥有了这个 String值，无需关心它从哪里来。你可以确定你传走的这个字符串除了你自己就不会有别人改变它。

     另一方面，Swift 编译器优化了字符串使用的资源，实际上拷贝只会在确实需要的时候才进行。这意味着当你把字符串当做值类型来操作的时候总是能够有用很棒的性能。
     
     */
    
    
    
    
    
    
    //////////////////////////////////////////////////////
    
    //操作单个字符  character
    
    //可以通过 for-in循环遍历 String 中的每一个独立的 Character值：
    for character in "Dog👿" {
        print(character)
    }
//    D
//    o
//    g
//    👿
    
    //另外，你可以通过提供 Character类型标注来从单个字符的字符串字面量创建一个独立的 Character常量或者变量：

    let exclamationMark: Character = "!"
    
    //String值可以通过传入 Character值的字符串作为实际参数到它的初始化器来构造：

    let catCharacters: [Character] = ["c", "a", "t", "🐱"]
    let catStirng = String.init(catCharacters)
    print(exclamationMark, catStirng)
    
    
    
    //////////////////////////////////////////////////////
    
    //连接字符串和字符
    
    //String值能够被加起来（或者说连接），使用加运算符（ +）来创建新的String值：
    let string1 = "hello"
    let string2 = " there"
    var welcome = string1 + string2
    print(welcome)
    
    
    //你使用 String类型的 append()方法来可以给一个 String变量的末尾追加 Character值：
    let myc: Character = "!"
    welcome.append(myc)
    print(welcome)
    
    
    /**
     注意

     你不能把 String或者 Character追加到已经存在的 Character变量当中，因为 Character值能且只能包含一个字符。
     */
    
    //如果你使用多行字符串字面量来构建很长的字符串，又想让每一行字符串末尾有一个换行符，包括最后一行。比如说：
    
    let badStart = """
    one
    two
    """
    let end = """
    three
    """
    print(badStart + end)
    // Prints two lines: 不符合预期
    // one
    // twothree
     
    let goodStart = """
    one
    two
    
    """
    print(goodStart + end)
    // Prints three lines: 符合预期
    // one
    // two
    // three
    
    
    
    
    
    
    //////////////////////////////////////////////////////
    
    //字符串插值
    
    /**
     字符串插值是一种从混合常量、变量、字面量和表达式的字符串字面量构造新 String值的方法。每一个你插入到字符串字面量的元素都要被一对圆括号包裹，然后使用反斜杠前缀：
     */
    let ave = 3
    let message = "ave is \(ave) and \(Double(ave) * 2.2)"
    print(message)
    
    
    //可以在扩展字符串分隔符中创建一个包含在其他情况下会被当作字符串插值的字符。比如说：
    print(#"Write an interpolated string in Swift using \(multiplier)."#)
    // "Write an interpolated string in Swift using \(multiplier)."
    
    //要在使用扩展分隔符的字符串中使用字符串插值，在反斜杠后使用匹配首尾井号数量的井号。比如：

    print(#"6 times 7 is \#(6 * 7)."#)
    // Prints "6 times 7 is 42."
    
    
    
    
    //////////////////////////////////////////////////////
    
    //Unicode  ---统一码、万国码、单一码
    /**
     Unicode 是为了解决传统的字符编码方案的局限而产生的，
     它为每种语言中的每个字符设定了统一并且唯一的二进制编码，以满足跨语言、跨平台进行文本转换、处理的要求。
     
     Unicode 是一种在不同书写系统中编码、表示和处理文本的国际标准。
     它允许你表示几乎标准化格式的任何语言中的任何字符，并且为外部源比如文本文档或者网页读写这些字符。
     如同这节中描述的那样，Swift 的 String和 Character类型是完全 Unicode 兼容的。
     */
    
    
    /**
     Unicode 标量
     面板之下，Swift 的原生 String 类型建立于 Unicode 标量值之上。一个 Unicode 标量是一个为字符或者修饰符创建的独一无二的21位数字，比如 LATIN SMALL LETTER A (" a")的 U+0061 ，或者 FRONT-FACING BABY CHICK  ( "🐥" )的 U+1F425 。
     */
    
    //扩展字形集群
    
    //每一个 Swift 的 Character类型实例都表示了单一的扩展字形集群。
    //扩展字形集群是一个或者多个有序的 Unicode 标量（当组合起来时）产生的单个人类可读字符。
    
    /**
     这有个栗子。字母 é以单个 Unicode 标量 é ( LATIN SMALL LETTER E WITH ACUTE, 或者 U+00E9)表示。
     同样的字母也可以用一对标量——一个标准的字母 e ( LATIN SMALL LETTER E,或者说  U+0065)，以及 COMBINING ACUTE ACCENT标量( U+0301)表示。 COMBINING ACUTE ACCENT标量会以图形方式应用到它前边的标量上，当 Unicode 文本渲染系统渲染时，就会把 e转换为 é来输出。
     */
    
    let eAcute: Character = "\u{E9}" // é
    let combinedEAcute: Character = "\u{65}\u{301}" // e followed by `
    print(eAcute, combinedEAcute)  //é é
    
    //扩展字形集群是一种非常灵活的把各种复杂脚本字符作为单一 Character值来表示的方法。比如说韩文字母中的音节能被表示为复合和分解序列两种。这两种表示在 Swift 中都完全合格于单一 Character值：
    let precomposed: Character = "\u{D55C}" // 한
    let decomposed: Character = "\u{1112}\u{1161}\u{11AB}" // ᄒ, ᅡ, ᆫ
    print(precomposed, decomposed)  // 한 한
    
    
    
    //字符统计
    //既然有了扩展字形集群，那么计算字符的时候也就有特殊情况
    //一般情况如下：
    let unusualMenagerie = "Koala 🐨, Snail 🐌, Penguin 🐧, Dromedary 🐪"
    print("unusualMenagerie has \(unusualMenagerie.count) characters") // 40个空格和图标都算一个
    
    //但是 注意 Swift 为 Character值使用的扩展字形集群意味着字符串的创建和修改可能不会总是影响字符串的字符统计数。
    //比如说，如果你使用四个字符的cafe来初始化一个新的字符串，然后追加一个 COMBINING ACUTE ACCENT  ( U+0301)到字符串的末尾，字符串的字符统计结果将仍旧是 4，但第四个字符是 é而不是 e：
    var word = "cafe"
    print("the number of characters in \(word) is \(word.count)") // 4
    // Prints "the number of characters in cafe is 4"
     
    word += "\u{301}"    // COMBINING ACUTE ACCENT, U+0301
     
    print("the number of characters in \(word) is \(word.count)") // 4
    // Prints "the number of characters in café is 4"
    
    
    /**
     注意

     扩展字形集群能够组合一个或者多个 Unicode 标量。这意味着不同的字符——以及相同字符的不同表示——能够获得不同大小的内存来储存。因此，Swift 中的字符并不会在字符串中获得相同的内存空间。所以说，字符串中字符的数量如果不遍历它的扩展字形集群边界的话，是不能被计算出来的。
     如果你在操作特殊的长字符串值，要注意 count属性为了确定字符串中的字符要遍历整个字符串的 Unicode 标量。

     通过 count属性返回的字符统计并不会总是与包含相同字符的 NSString中 length属性相同。
     
     *********NSString中的长度是基于在字符串的 UTF-16 表示中16位码元的数量来表示的，而不是字符串中 Unicode 扩展字形集群的数量。
     */
    let nsWord = NSString(string: word)
    print("NS word length is \(nsWord.length)") // 5
    
    
    
    
    
    
    //////////////////////////////////////////////////////
    
    //访问和修改字符串
    
    //你可以通过下标脚本语法或者它自身的属性和方法来访问和修改字符串。

    
    //字符串索引
    
    /**
     每一个 String值都有相关的索引类型， String.Index，它相当于每个 Character在字符串中的位置。

     如上文中提到的那样，不同的字符会获得不同的内存空间来储存，所以为了明确哪个 Character 在哪个特定的位置，你必须从 String的开头或结尾遍历每一个 Unicode 标量。因此，Swift 的字符串不能通过整数值索引。

     使用 startIndex属性来访问 String中第一个 Character的位置。 endIndex属性就是 String中最后一个字符后的位置。所以说， endIndex属性并不是字符串下标脚本的合法实际参数。如果 String为空，则 startIndex与 endIndex相等。

     使用 index(before:) 和 index(after:) 方法来访问给定索引的前后。要访问给定索引更远的索引，你可以使用 index(_:offsetBy:) 方法而不是多次调用这两个方法。
     */
    
    //你可以使用下标脚本语法来访问 String索引中的特定 Character
    let greeting = "guten tag!"
    print(greeting[greeting.startIndex]) //g
    
    print(greeting[greeting.index(after: greeting.startIndex)]) //u
    
    print(greeting[greeting.index(before: greeting.endIndex)])//!
    
    print(greeting[greeting.index(greeting.startIndex, offsetBy: 6)])//t
    
//    尝试访问的 Character如果索引位置在字符串范围之外，就会触发运行时错误。
    
//    greeting[greeting.endIndex] // error
    
    
    //使用 indices属性来访问字符串中每个字符的索引。
    for index in greeting.indices {
        print(index)
        print("\(greeting[index])")
    }
    /*
     Index(_rawBits: 1)
     g
     Index(_rawBits: 65793)
     u
     Index(_rawBits: 131329)
     t
     Index(_rawBits: 196865)
     e
     Index(_rawBits: 262401)
     n
     Index(_rawBits: 327937)
      
     Index(_rawBits: 393473)
     t
     Index(_rawBits: 459009)
     a
     Index(_rawBits: 524545)
     g
     Index(_rawBits: 590081)
     !
     */
    //注意

//    你可以在任何遵循了 Indexable 协议的类型中使用 startIndex 和 endIndex 属性以及 index(before:) ， index(after:) 和 index(_:offsetBy:) 方法。这包括这里使用的 String ，还有集合类型比如 Array ， Dictionary 和 Set 。
    
    
    //插入和删除
    //要给字符串的特定索引位置插入字符，使用 insert(_:at:)方法，另外要冲入另一个字符串的内容到特定的索引，使用 insert(contentsOf:at:) 方法。
    var welcomeIn = "hello"
    welcomeIn.insert(contentsOf: "hteasd", at: welcomeIn.startIndex)
    print(welcomeIn)
    
    //要从字符串的特定索引位置移除字符，使用 remove(at:)方法，另外要移除一小段特定范围的字符串，使用 removeSubrange(_:) 方法：
    welcomeIn.remove(at: welcomeIn.index(welcomeIn.startIndex, offsetBy: 3))
    print(welcomeIn)
    
    welcomeIn.removeSubrange((welcomeIn.startIndex ... welcomeIn.index(welcomeIn.startIndex, offsetBy: 2)))
    print(welcomeIn)
    
    
    
    
    //////////////////////////////////////////////////////
    
    //子字符串
    
    /**
     当你获得了一个字符串的子字符串——比如说，使用下标或者类似 prefix(_:) 的方法——结果是一个 Substring 的实例，不是另外一个字符串。
     Swift 中的子字符串拥有绝大部分字符串所拥有的方法，也就是说你可以用操作字符串相同的方法来操作子字符串。
     
     总之，与字符串不同，在字符串上执行动作的话你应该使用子字符串执行短期处理。当你想要把结果保存得长久一点时，你需要把子字符串转换为 String 实例。
     */
    
    //例如：
    let greateA = "Hello, jija"
    let index = greateA.firstIndex(of: ",") ?? greateA.endIndex
    let beginOfGreate = greateA[..<index] //这里index必须确保不为空，否则会报错：加叹号或者如上
    
    print(greateA, beginOfGreate)
    
    let newString = String(beginOfGreate)
    print(newString)
    
    /**
     与字符串类似，每一个子字符串都有一块内存区域用来保存组成子字符串的字符。
     字符串与子字符串的不同之处在于，作为性能上的优化，子字符串可以重用一部分用来保存原字符串的内存，或者是用来保存其他子字符串的内存。（字符串也拥有类似的优化，但是如果两个字符串使用相同的内存，他们就是等价的。）
     这个性能优化意味着在你修改字符串或者子字符串之前都不需要花费拷贝内存的代价。
     如同上面所说的，子字符串并不适合长期保存——因为它们重用了原字符串的内存，只要这个字符串有子字符串在使用中，那么这个字符串就必须一直保存在内存里。

     在上面的例子中， greeting 是一个字符串，也就是说它拥有一块内存保存着组成这个字符串的字符。由于 beginning 是 greeting 的子字符串，它重用了 greeting 所用的内存。
     不同的是， newString 是字符串——当它从子字符串创建时，它就有了自己的内存。
     
     注意
     String 和 Substring 都遵循 StringProtocol 协议，也就是说它基本上能很方便地兼容所有接受 StringProtocol 值的字符串操作函数。你可以无差别使用 String 或 Substring 值来调用这些函数。
     */
    
    
    
    
    
    
    //////////////////////////////////////////////////////
    
    //字符串比较
    //Swift 提供了三种方法来比较文本值：字符串和字符相等性，前缀相等性以及后缀相等性。
    
    
    //字符串和字符相等性
    //如同比较运算符中所描述的那样，字符串和字符相等使用“等于”运算符 ( ==) 和“不等”运算符 ( !=)进行检查：
    let nameZ: String = "name is zi"
    let sameName: String = "name is zi"
    if nameZ == sameName {
        print("\(nameZ) 等于 \(sameName)")
    }
    
    if nameZ as AnyObject === sameName as AnyObject {
        print("\(nameZ) 等价 \(sameName)")
    }else {
        print("\(nameZ) 不等价 \(sameName)")
    }
    
    /*
     两个 String值（或者两个 Character值）如果它们的扩展字形集群是规范化相等，则被认为是相等的。
     
     如果扩展字形集群拥有相同的语言意义和外形，我们就说它规范化相等，就算它们实际上是由不同的 Unicode 标量组合而成。
     */
    
    //比如说， LATIN SMALL LETTER E WITH ACUTE ( U+00E9)是规范化相等于 LATIN SMALL LETTER E( U+0065)加 COMBINING ACUTE ACCENT ( U+0301)的。这两个扩展字形集群都是表示字符é的合法方式，所以它们被看做规范化相等：
    // "Voulez-vous un café?" using LATIN SMALL LETTER E WITH ACUTE
    let eAcuteQuestion = "Voulez-vous un caf\u{E9}?"
     
    // "Voulez-vous un café?" using LATIN SMALL LETTER E and COMBINING ACUTE ACCENT
    let combinedEAcuteQuestion = "Voulez-vous un caf\u{65}\u{301}?"
     
    if eAcuteQuestion == combinedEAcuteQuestion {
        print("These two strings are considered equal")
    }
    
    /*
     注意

     字符串和字符的比较在 Swift 中并不区分区域设置。
     */
    
    
    
    //前缀和后缀相等性
    /**
     要检查一个字符串是否拥有特定的字符串前缀或者后缀，调用字符串的 hasPrefix(_:)和 hasSuffix(_:)方法，它们两个都会接受一个 String 类型的实际参数并且返回一个布尔量值。
     */
    
    //下边的栗子假设一个表示莎士比亚的《罗密欧与朱丽叶》前两场场景位置的字符串数组：
    let romeoAndJuliet = [
        "Act 1 Scene 1: Verona, A public place",
        "Act 1 Scene 2: Capulet's mansion",
        "Act 1 Scene 3: A room in Capulet's mansion",
        "Act 1 Scene 4: A street outside Capulet's mansion",
        "Act 1 Scene 5: The Great Hall in Capulet's mansion",
        "Act 2 Scene 1: Outside Capulet's mansion",
        "Act 2 Scene 2: Capulet's orchard",
        "Act 2 Scene 3: Outside Friar Lawrence's cell",
        "Act 2 Scene 4: A street in Verona",
        "Act 2 Scene 5: Capulet's mansion",
        "Act 2 Scene 6: Friar Lawrence's cell"
    ]
    
    //可以使用 hasPrefix(_:)方法操作 romeoAndJuliet数组来计算第一场场景的数量：
    var act1SceneCount = 0
    for scene in romeoAndJuliet {
        if scene.hasPrefix("Act 1 ") {
            act1SceneCount += 1
        }
    }
    print("There are \(act1SceneCount) scenes in Act 1") //There are 5 scenes in Act 1
    
    //同样的，使用 hasSuffix(_:)方法来计算与 Capulet’s mansion 和 Friar Lawrence’s cell 两个地方相关的场景数量：
    var mansionCount = 0
    var cellCount = 0
    for scene in romeoAndJuliet {
        if scene.hasSuffix("Capulet's mansion") {
            mansionCount += 1
        } else if scene.hasSuffix("Friar Lawrence's cell") {
            cellCount += 1
        }
    }
    print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")
    
    /*
     注意

     如同字符串和字符相等性一节所描述的那样， hasPrefix(_:)和 hasSuffix(_:)方法只对字符串当中的每一个扩展字形集群之间进行了一个逐字符的规范化相等比较。
     */
    
    
    
    
    
    
    
    
    
    //////////////////////////////////////////////////////
    
    
    //字符串的 Unicode 表示法
    
    /*
     当一个 Unicode 字符串写入文本文档或者其他储存里边的时候，这个字符串的 Unicode 标量会被编码为一个或者一系列 Unicode 定义的编码格式。每一种格式都把字符串编码成所谓码元的小块。这些包括 UTF-8 编码格式（它把字符串以8 码元编码），UTF-16 编码格式（它把字符串按照 16位 码元 编码），以及 UTF-32 编码格式（它把字符串以32位码元编码）。

     Swift 提供了几种不同的方法来访问字符串的 Unicode 表示。你可以使用 for-in语句来遍历整个字符串，来访以 Unicode 扩展字形集群的方式访问单独的 Character值。这个过程在操作字符章节有着详细的描述。

      或者，你也可以用以下三者之一的其他 Unicode 兼容表示法来访问 String值：
     UTF-8 码元的集合（关联于字符串的 utf8  属性）
     UTF-16 码元的集合（关联于字符串的 utf16  属性）
     21位 Unicode 标量值的集合，等同于字符串的 UTF-32 编码格式（关联于字符串的 unicodeScalars 属性）
     */
    
    //例如：
    let dogString = "Dog‼🐶" //注意这里‼是一个字符
    //你可以通过遍历 utf8属性来访问一个 String的 UTF-8 表示法。这个属性的类型是 String.UTF8View，它是非负8位（ UInt8）值，在字符串的 UTF-8 表示法中每一个字节的内容：
    for unit in dogString.utf8 {
        print(unit, terminator: " ")
    }
    print(dogString.count)
    
    
    
    //可以通过遍历 utf16属性来访问 String的 UTF-16 表示法。这个属性的类型是String.UTF16View，它是非负 16位（ UInt16）值，在字符串 UTF-16 表示法中每一个 16位 的内容：
    for codeUnit in dogString.utf16 {
        print("\(codeUnit) ", terminator: "")
    }
    print("")
    
    //////////////////////////////////////////////////////
    
    
    
    
    
    
    
    
    
    
    
    
    //////////////////////////////////////////////////////
    
    
    
    
    
    
    
    
    
    

}



