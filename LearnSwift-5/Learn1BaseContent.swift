//
//  Learn1BaseContent.swift
//  LearnSwift-5
//
//  Created by 祁子栋 on 2020/3/2.
//  Copyright © 2020 祁子栋. All rights reserved.
//

import Foundation

func baseContent() -> Void {
    //常量与变量
    //1、声明常量
    let maxNumber = 10

    //2.声明变量
    var currentNum = 11
    
    //输出，除了z要输出的内容的list，还能控制separator（分割）和terminator（断行）
    //有默认值，关于函数参数默认值，后续再做记录
    print("maxNumber", maxNumber, "currentNum", currentNum)

    //maxNumber = 9 //编译报错
    currentNum = 9 //编译正常
    
    //关于分号;的说明：
    /**
     swift 并不要求在每一句代码结尾添加分号;
     但是如果你的一行代码里有多句代码，那么分号是必要的，如下：
     */
    let apple = ""; print(apple)
    
    
    //整数
    /**
     整数就是没有小数部分的数字，比如 42 和 -23 。整数可以是有符号（正，零或者负），或者无符号（正数或零）。

     Swift 提供了 8，16，32 和 64 位编码的有符号和无符号整数，这些整数类型的命名方式和 C 相似，例如 8 位无符号整数的类型是 UInt8 ，32 位有符号整数的类型是 Int32 。与 Swift 中的其他类型相同，这些整数类型也用开头大写命名法。
     
     不同位数的编码能够存储的数字范围不同
     */
    
    //整数范围
    /**
     在32位平台上， Int 的长度和 Int32 相同。
     在64位平台上， Int 的长度和 Int64 相同。
     */
    //对于大多数整数区间来说完全够用了。
    //可以通过 min 和 max 属性来访问每个整数类型的最小值和最大值：
    let intMin = Int.min
    let intMax = Int.max
    let int8Min = Int8.min
    let int8Max = Int8.max
    print("intMin", intMin,"intMax", intMax,"int8Min", int8Min,"int8Max", int8Max)
    //intMin -9223372036854775808 intMax 9223372036854775807 int8Min -128 int8Max 127
    
    //关于UInt
    /**
     UInt
     Swift 也提供了一种无符号的整数类型， UInt ，它和当前平台的原生字长度相同。

     在32位平台上， UInt 长度和 UInt32 长度相同。
     在64位平台上， UInt 长度和 UInt64 长度相同。
     注意
     只在的确需要存储一个和当前平台原生字长度相同的无符号整数的时候才使用 UInt 。其他情况下，推荐使用 Int ，即使已经知道存储的值都是非负的。如同类型安全和类型推断中描述的那样，统一使用 Int  会提高代码的兼容性，同时可以避免不同数字类型之间的转换问题，也符合整数的类型推断。
     */
    //UInt
    
    
    //浮点数(小数)
    /**
     浮点数
     浮点数是有小数的数字，比如 3.14159 , 0.1 , 和 -273.15 。
     浮点类型相比整数类型来说能表示更大范围的值，可以存储比 Int 类型更大或者更小的数字。Swift 提供了两种有符号的浮点数类型。

     Double代表 64 位的浮点数。
     Float 代表 32 位的浮点数。
     注意
     Double 有至少 15 位数字的精度，而 Float 的精度只有 6 位。具体使用哪种浮点类型取决于你代码需要处理的值范围。
     
     -------------
     
     在两种类型都可以的情况下，推荐使用 Double 类型。
     */
    
    
    //类型安全和类型推断
    /**
     Swift 是一门类型安全的语言。类型安全的语言可以让你清楚地知道代码可以处理的值的类型。如果你的一部分代码期望获得 String ，你就不能错误的传给它一个 Int 。
     
     如果你没有为所需要的值进行类型声明，Swift会使用类型推断的功能推断出合适的类型。
     通过检查你给变量赋的值，类型推断能够在编译阶段自动的推断出值的类型。
     
     因为有了类型推断，Swift 和 C 以及 Objective-C 相比，只需要少量的类型声明。其实常量和变量仍然需要明确的类型，但是大部分的声明工作 Swift 会帮你做。
     */
    
    //通常来说，Swift 会把你所给定的变量推断为合适的类型，
    //但也会有固定的选择，例如会为String，Int，Double(不会是Float)
    let pie = 3.1415926
    let age = 22
    let name = "LLLi"
    print(pie, age, name)
    
    
    //数值型字面量
    /**
     整数型字面量可以写作：

     一个十进制数，没有前缀
     一个二进制数，前缀是 0b
     一个八进制数，前缀是 0o
     一个十六进制数，前缀是 0x
     */
    
    let decimalInteger = 17
    let binaryInteger = 0b10001 // 17 in binary notation
    let octalInteger = 0o21 // 17 in octal notation
    let hexadecimalInteger = 0x11 // 17 in hexadecimal notation
    
    print(decimalInteger, binaryInteger, octalInteger, hexadecimalInteger)//17 17 17 17
    
    /**
     浮点字面量可以是十进制（没有前缀）或者是十六进制（前缀是 0x）。
     小数点两边必须有至少一个十进制数字（或者是十六进制的数字）。
     
     十进制的浮点字面量还有一个可选的指数，用大写或小写的 e 表示；
     十六进制的浮点字面量必须有指数，用大写或小写的 p 来表示。
     */
    
    /**
     十进制数与 exp  的指数，结果就等于基数乘以 10exp：

     1.25e2 意味着 1.25 x 102, 或者 125.0  .
     1.25e-2  意味着 1.25 x 10-2, 或者 0.0125  .
     */
    
    /**
     十六进制数与 exp 指数，结果就等于基数乘以2exp：

     0xFp2  意味着 15 x 22, 或者 60.0 .
     0xFp-2  意味着 15 x 2-2, 或者 3.75 .
     */
    //数值型字面量也可以增加额外的格式使代码更加易读。整数和浮点数都可以添加额外的零或者添加下划线来增加代码的可读性。
    //下面的这些格式都不会影响字面量的值。
    _ = 000123.456
    _ = 1_000_000
    _ = 1_000_000.000_000_1
    
    
    
    //数值类型转换
    
    /**
     通常来讲，即使我们知道代码中的整数变量和常量是非负的，我们也会使用 Int 类型。经常使用默认的整数类型可以确保你的整数常量和变量可以直接被复用并且符合整数字面量的类型推测。

     只有在特殊情况下才会使用整数的其他类型，例如需要处理外部长度明确的数据或者为了优化性能、内存占用等其他必要情况。在这些情况下，使用指定长度的类型可以帮助你及时发现意外的值溢出和隐式记录正在使用数据的本质。
     */
    
    //整数转换
    /**
     不同整数的类型在变量和常量中存储的数字范围是不同的。 Int8 类型的常量或变量可以存储的数字范围是 -128~127，而 UInt8 类型的常量或者变量能存储的数字范围是 0~255 。如果数字超出了常量或者变量可存储的范围，编译的时候就会报错
     
     */
//    let cannotBeNegative: UInt = -1 //会报错
//    let tooBig: Int8 = Int8.max + 1 //会报错
    
    
    /**
     因为每个数值类型可存储的值的范围不同，你必须根据不同的情况进行数值类型的转换。这种选择性使用的方式可以避免隐式转换的错误并使你代码中的类型转换意图更加清晰。

     要将一种数字类型转换成另外一种类型，你需要用当前值来初始化一个期望的类型。在下面的栗子中，常量 twoThousand 的类型是 UInt16 ，而常量 one 的类型是 UInt8 。他们不能直接被相加在一起，因为他们的类型不同。所以，这里让 UInt16 (one ) 创建一个新的 UInt16 类型并用 one 的值初始化，这样就可以在原来的地方使用了。
     */
    
    //z注意这里不同的类型是指数字在内存中存储的位数不同，并非进制，如下，都是10进制，但存储的位数不同
    let twoThousand: UInt16 = 2000
    let one: UInt8 = 1
    let twoThousandAndOne = twoThousand + UInt16(one)
    print(twoThousand, one, twoThousandAndOne)
    
    
    //整数和浮点数转换
    //整数和浮点数类型的转换必须显式地指定类型：
    let three = 3
    let piontOneFourOne = 0.141
    let sumsss = Double(three) + piontOneFourOne
    print(three, piontOneFourOne, sumsss)// 3 0.141 3.141
    
    //在这里，常量 three 的值被用来创建一个类型为 Double 的新的值，所以加号两边的值的类型是相同的。没有这个转换，加法就无法进行。
    
   // 浮点转换为整数也必须显式地指定类型。一个整数类型可以用一个 Double 或者 Float 值初始化。

    let integerPi = Int(sumsss)
    print(integerPi)//3
    
    //在用浮点数初始化一个新的整数类型的时候，数值会被截断。也就是说 4.75 会变成 4 ， -3.9 会变为 -3
    
    
    
    
    //类型别名
    
    /**
     类型别名可以为已经存在的类型定义了一个新的可选名字。用 typealias 关键字定义类型别名。

     当你根据上下文的语境想要给类型一个更有意义的名字的时候，类型别名会非常高效，
     例如处理外部资源中特定长度的数据时：
     */
    typealias AudioSample = UInt16
    
    let maxAmplitudeFound = AudioSample.min
    print(maxAmplitudeFound)//0
    
    
    
    //布尔值
    /**
     Swift 有一个基础的布尔量类型，就是 Bool，布尔量被作为逻辑值来引用，因为他的值只能是真或者假。
     Swift为布尔量提供了两个常量值， true 和 false 。
     */
    
    let appleIsRed = true
    let monkeyIsFruit = false
    
    /**
     上面的两个类型，被推断为 Bool ，因为它们使用布尔量来初始化。对于上文中的 Int  和 Double ，当你在创建的他们的时候设置为 true 或 false ，那么就不必给这个常量或者变量声明为 Bool 类型。初始化常量或者变量的时候，如果值的类型已知，类型推断会把 Swift 代码变的更加整洁和易读。
     */
    if monkeyIsFruit {
        print("monkeyIsFruit");
    } else {
        print("appleIsRed")
    }
    
    //Swift 的类型安全机制会阻止你用一个非布尔量的值替换掉 Bool 。
    let i = 1
    /*
    if i { //这种写法在OC中可以，但是Swift 中是不允许的
        print(i)
    }
    */
    
    //下面这么写可以
    if i == 1 {
        print(i)
    }
    
    
    
    
    //元组
    //元组把多个值合并成单一的复合型的值。元组内的值可以是任何类型，而且可以不必是同一类型。
    
    //例如：
    let http404Error = (404, "not fount")
    
    /**
     (404, "Not Found") 元组把一个 Int  和一个 String  组合起来表示 HTTP 状态代码的两种不同的值：数字和人类可读的描述。他可以被描述为“一个类型为 (Int, String)  的元组”
     
     任何类型的排列都可以被用来创建一个元组，他可以包含任意多的类型。例如 (Int, Int, Int) 或者 (String, Bool) ，实际上，任何类型的组合都是可以的。
     */
    
    //使用方法 1：
    //你也可以将一个元组的内容分解成单独的常量或变量，这样你就可以正常的使用它们了：
    let (statusCode, statusMessage) = http404Error
    print("Status Code is \(statusCode)")  //Status Code is 404
    print("Status message is \(statusMessage)") //Status message is not fount
    
    //当你分解元组的时候，如果只需要使用其中的一部分数据，不需要的数据可以用下滑线（ _ ）代替：

    let (justTheStatusCode, _) = http404Error
    print("The status code is \(justTheStatusCode)")
    
    //使用方法 2：
    //另外一种方法就是利用从零开始的索引数字访问元组中的单独元素：
    print("Status code is \(http404Error.0)")
    
    print("Status message is \(http404Error.1)")
    
    //你可以在定义元组的时候给其中的单个元素命名：
    let http200Status = (statusCode: 200, description: "OK")
    
    //使用方法 3：
    //在命名之后，你就可以通过访问名字来获取元素的值了：
    print("status code is \(http200Status.statusCode)")
    print("Status message is \(http200Status.description)")
    
    /**
     注意

     元组在临时的值组合中很有用，但是它们不适合创建复杂的数据结构。
     如果你的数据结构超出了临时使用的范围，
     那么请建立一个类或结构体来代替元组。更多信息请参考类和结构体。
     */
    
    
    
    
    
    
    //可选项
    /**
     可以利用可选项来处理值可能缺失的情况。可选项意味着：

     这里有一个值，他等于x
     或者

     这里根本没有值
     */
    
    /**
     注意

     在 C 和 Objective-C 中，没有可选项的概念。
     在 Objective-C 中有一个近似的特性，一个方法可以返回一个对象或者返回 nil 。
     nil 的意思是“缺少一个可用对象”。
     然而，他只能用在对象上，却不能作用在结构体，基础的 C 类型和枚举值上。
     对于这些类型，Objective-C 会返回一个特殊的值（例如 NSNotFound ）来表示值的缺失。
     这种方法是建立在假设调用者知道这个特殊的值并记得去检查他。
     然而，Swift 中的可选项就可以让你知道任何类型的值的缺失，他并不需要一个特殊的值。
     */
    
    //例如：
    let possibleNum = "123"
    let convertedNum = Int(possibleNum)
    print(convertedNum ?? 0)
    //这里convertedNum就是一个可选类型的Int，写做Int?
    //就会提示你最好处理这个可选项，要么添加默认值，如果你确认他有，就强制解包
    
    //因为当我们使用初始化器将String转换为Int时，有可能会失败，所以这个初始化器返回一个可选的Int， 表示他返回的结果convertedNum中，有可能包含一个Int值，也有可能不存在
    
    
    
    //关于nil
    //你可以通过给可选变量赋值一个 nil 来将之设置为没有值：
    
    /**
     注意

     nil 不能用于非可选的常量或者变量，如果你的代码中变量或常量需要作用于特定条件下的值缺失，可以给他声明为相应类型的可选项
     */
    var serverResponseCode = 404
    serverResponseCode = 12
    var serverResponseMes: String? = "4041212"
    //此时这里会报错：'nil' cannot be assigned to type 'Int'  因为类型判断serverResponseCode为一个Int
//    serverResponseCode = nil
    serverResponseMes = nil
    
    /**
     如果你定义的可选变量没有提供一个默认值，变量会被自动设置成 nil
     */
    var surveyAnswer: String?// surveyAnswer is automatically set to nil
//    var surveyAnswer: String//这么就会报错，因为不是可选项，必须有值，也就必须初始化
    
    /**
     注意

     Swift 中的 nil 和Objective-C 中的 nil 不同，在 Objective-C 中 nil 是一个指向不存在对象的指针。在 Swift中， nil 不是指针，他是值缺失的一种特殊类型，任何类型的可选项都可以设置成 nil 而不仅仅是对象类型。
     */
    
//    例如：
//    print(serverResponseCode, serverResponseMes!, surveyAnswer!)
    //这样会报运行时错误：Thread 1: Fatal error: Unexpectedly found nil while unwrapping an Optional value
    
    
    
    
    //If 语句以及强制展开
    //你可以利用 if 语句通过比较 nil 来判断一个可选中是否包含值。利用相等运算符 （ == ）和不等运算符（ != ）。
    
    /**
     一旦你确定可选中包含值，你可以在可选的名字后面加一个感叹号 （ ! ） 来获取值，感叹号的意思就是说“我知道这个可选项里边有值，展开吧。”这就是所谓的可选值的强制展开。
     
     注意
     使用 ! 来获取一个不存在的可选值会导致运行错误，例如上面，在使用!强制展开之前必须确保可选项中包含一个非 nil 的值
     */
    if convertedNum != nil {
        print("convered num is \(convertedNum!)")
    }
    
    
    //可选项绑定
    //可以使用可选项绑定来判断可选项是否包含值，如果包含就把值赋给一个临时的常量或者变量。可选绑定可以与 if 和 while 的语句使用来检查可选项内部的值，并赋值给一个变量或常量。 if 和 while 语句的更多详细描述，请参考控制流。
    
    if let actualNum = convertedNum {
        print(actualNum)
    }
    //或者
    if let actualNum = Int("22123123") {
        print(actualNum)
    }
    /**
     代码可以读作：

     “如果  Int(possibleNumber)  返回的可选 Int 包含一个值，将这个可选项中的值赋予一个叫做 actualNumber 的新常量。”
     
     如果转换成功，常量 actualNumber 就可以用在 if 语句的第一个分支中，他早已被可选内部的值进行了初始化，所以这时就没有必要用 ! 后缀来获取里边的值。在这个栗子中 actualNumber 被用来输出转换后的值。

    
     */
    /**
      常量和变量都可以使用可选项绑定，如果你想操作 if 语句中第一个分支的 actualNumber 的值，你可以写 if var actualNumber 来代替，可选项内部包含的值就会被设置为一个变量而不是常量。
     例如
     */
    if var actualNum = Int("22123123") {
        actualNum = 33
        print(actualNum)
    }
    
    
    //你可以在同一个 if 语句中包含多可选项绑定，用逗号分隔即可。如果任一可选绑定结果是 nil 或者布尔值为 false ，那么整个 if 判断会被看作 false 。下面的两个 if 语句是等价的：
    
    if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber && secondNumber < 100 {
        print("\(firstNumber) < \(secondNumber) < 100")
    }
    // Prints "4 < 42 < 100"
     
    if let firstNumber = Int("4") {
        if let secondNumber = Int("42") {
            if firstNumber < secondNumber && secondNumber < 100 {
                print("\(firstNumber) < \(secondNumber) < 100")
            }
        }
    }
    // Prints "4 < 42 < 100"
    

    /**
     注意

     如同'提前退出'(见控制流)中描述的那样，使用 if 语句创建的常量和变量只在if语句的函数体内有效。相反，在 guard 语句中创建的常量和变量在 guard 语句后的代码中也可用。
     */
    
    
    //隐式展开可选项
    //如上所述，可选项明确了常量或者变量可以“没有值”。可选项可以通过 if 语句来判断是否有值，如果有值的话可以通过可选项绑定来获取里边的值。
    
    /**
     有时在一些程序结构中可选项一旦被设定值之后，就会一直拥有值。在这种情况下，就可以去掉检查的需求，也不必每次访问的时候都进行展开，因为它可以安全的确认每次访问的时候都有一个值。

     这种类型的可选项被定义为隐式展开可选项。通过在声明的类型后边添加一个叹号（ String! ）而非问号（  String? ） 来书写隐式展开可选项。与在使用可选项时在名称后加一个叹号不同的是，声明的时候要把叹号放在类型的后面。
     
     在可选项被定义的时候就能立即确认其中有值的情况下，隐式展开可选项非常有用。
     如同无主引用和隐式展开的可选属性中描述的那样(自动引用计数)，隐式展开可选项主要被用在 Swift 类的初始化过程中。
     */
    
    // 隐式展开可选项是后台场景中通用的可选项，但是同样可以像非可选值那样来使用， 每次访问的时候都不需要展开。 下面的栗子展示了在访问被明确为 String  的可选项展开值时，可选字符串和隐式展开可选字符串的行为区别：
    
    
    let possibleString: String? = "An optional string."
    let forcedString: String = possibleString! //需要添加感叹号！
    
    let assumedString: String! = "An implicitly unwrapped optional string."
    let implicitString: String = assumedString //不需要写感叹号!
    
    print(possibleString!, forcedString, assumedString!, implicitString)
    
    
    //如果隐式展开可选项结果是 nil ，你还尝试访问它的值，你就会触发运行时错误。
    //结果和在没有值的普通可选项后面加一个叹号一样。
    
    //你可以和检查普通可选项一样检查隐式展开可选项是否为 nil ：
    if assumedString != nil {
        print(assumedString!)
    }
    //你也可以使用隐式展开可选项通过可选项绑定在一行代码中检查和展开值：
    if let definiteString = assumedString {
        print(definiteString)
    }
    
    
    /**
     注意

     不要在一个变量将来会变为 nil 的情况下使用隐式展开可选项。如果你需要检查一个变量在生存期内是否会变为 nil ，就使用普通的可选项。
     */
    
    
    
    
    
    
    //错误处理
    
    /**
     在程序执行阶段，你可以使用错误处理机制来为错误状况负责。

     相比于可选项的通过值是否缺失来判断程序的执行正确与否，而错误处理机制能允许你判断错误的形成原因，
     在必要的情况下，还能将你的代码中的错误传递到程序的其他地方。

     当一个函数遇到错误情况，他会抛出一个错误，这个函数的访问者会捕捉到这个错误，并作出合适的反应。
     */
    
    /**
     通过在函数声明过程当中加入 throws 关键字来表明这个函数会抛出一个错误。当你调用了一个可以抛出错误的函数时，需要在表达式前预置 try 关键字。
     */
//    canThrowAnError()//会报错
    do {
        try canThrowAnError()
        // no error was thrown
    } catch {
        // an error was thrown
    }
    
    //do 语句创建了一个新的容器范围，可以让错误被传递到到不止一个的 catch 分句里。
    
    
    
}

func canThrowAnError() throws -> Void {
    // this function may or may not throw an error
    
}








