//
//  Learn2BasicOperators.swift
//  LearnSwift-5
//
//  Created by 祁子栋 on 2020/4/1.
//  Copyright © 2020 祁子栋. All rights reserved.
//

import Foundation

//基本运算符

/**
 运算符是一种用来检查、改变或者合并值的特殊符号或组合符号。举例来说，加运算符（ + ）能够把两个数字相加（比如 let i = 1 + 2  ）。更复杂的栗子包括逻辑与运算 &&  比如 if enteredDoorCode && passedRetinaScan  。

 Swift 在支持 C 中的大多数标准运算符的同时也增加了一些排除常见代码错误的能力。赋值符号（ = ）不会返回值，以防它被误用于等于符号（ == ）的意图上。算数符号（ + , - , * , / , %  以及其他）可以检测并阻止值溢出，以避免你在操作比储存类型允许的范围更大或者更小的数字时得到各种奇奇怪怪的结果。如同 溢出操作符 中描述的那样，你可以通过使用 Swift 的溢出操作符来选择进入值溢出行为模式。

 Swift 提供了两种 C 中没有的区间运算符（ a..<b  和 a...b ），来让你便捷表达某个范围的值。

 这个章节叙述了 Swift 语言当中常见的运算符。高级运算符 则涵盖了 Swift 中的高级运算符，同时描述了如何定义你自己的运算符以及在你自己的类当中实现标准运算符。
 
 */

/**
 专门用语
 运算符包括一元、二元、三元：

 一元运算符对一个目标进行操作（比如 -a  ）。一元前缀运算符在目标之前直接添加（比如 !b ），同时一元后缀运算符直接在目标末尾添加（比如 c! ）。
 二元运算符对两个目标进行操作（比如 2 + 3  ）同时因为它们出现在两个目标之间，所以是中缀。
 三元运算符操作三个目标。如同 C，Swift语言也仅有一个三元运算符，三元条件运算符（  a ? b : c ）。
 受到运算符影响的值叫做操作数。在表达式 1 + 2  中， +  符号是一个二元运算符，其中的两个值 1 和 2 就是操作数。
 
 */

func basicOperators() {
    
    //赋值运算符 =
    //赋值运算符（ a = b ）可以初始化或者更新 a  为 b  的值：
    let b = 10
    var a = 1
    a = b
    print(a, b) //10 10
    
    //如果赋值符号右侧是拥有多个值的元组，它的元素将会一次性地拆分成常量或者变量
    let (x, y) = (22, 33)
    print(x, y) // 22 33
    
    /**
     与 Objective-C 和 C 不同，Swift 的赋值符号自身不会返回值。下面的语句是不合法的：
     if x = y {
         // 这是不合法的, 因为 x = y 并不会返回任何值。
     }
     这个特性避免了赋值符号 (=) 被意外地用于等于符号 (==) 的实际意图上。Swift 通过让 if x = y  非法来帮助你避免这类的错误在你的代码中出现。
     */
    
    
    
    
    
    
    //算术运算符 + - * /
    
    /**
     与 C 和 Objective-C 中的算术运算符不同，Swift 算术运算符默认不允许值溢出。你可以选择使用 Swift 的溢出操作符（比如  a &+ b  ）来行使溢出行为。参见 溢出操作符
     加法运算符同时也支持 String  的拼接：
     */
    print("hello" + "hahahahaha") // hellohahahahaha
    
    
    
    
    
    
    
    
    //余数运算符
    //余数运算符（ a % b ）可以求出多少个 b 的倍数能够刚好放进 a 中并且返回剩下的值（就是我们所谓的余数）
    /**
     注意

     余数运算符（ % ）同样会在别的语言中称作取模运算符。总之，严格来讲的话这个行为对应着 Swift 中对负数的操作，所以余数要比模取更合适。
     */
    
    print(9%4) // 1
    
    //具体的% 的计算逻辑：
    /**
     决定  a % b  的结果， %  按照如下等式运算然后返回 remainder 作为它的输出：
     a = (b x some multiplier) + remainder

     此时 some multiplier  是 b  能放进 a  的最大倍数。

     把 9  和 4  插入到等式当中去：

     9 = (4 x 2) + 1

     当 a  是负数时也使用相同的方法来进行计算：
     
     */
    
    print(-9%4) // -1
    
    /**
     把 -9 和 4 插入到等式当中：
     -9 = (4 x -2) + -1

     得到余数 -1 。
     */
    
    //当 b为负数时它的正负号被忽略掉了。这意味着 a % b  与 a % -b  能够获得相同的答案。
    print(15%4) // 3
    print(15%(-4)) // 3
    
    
    
    
    
    //一元减号运算符
    //数字值的正负号可以用前缀 - 来切换，我们称之为 一元减号运算符：
    let three = 3
    let minusThree = -three // minusThree equals -3
    let plusThree = -minusThree
    print(three, minusThree, plusThree) // 3 -3 3
    
    
    //一元加号运算符
    //一元加号运算符 （ + ）直接返回它操作的值，不会对其进行任何的修改：
    let minusSix = -6
    let alsoMinusSix = +minusSix
    print(minusSix, alsoMinusSix) // -6 -6
    
    
    
    
    
    //组合赋值符号  += -=
    
    var lla = 1
    lla += 2
    print(lla) //3
    //表达式  a += 2  其实就是 a = a + 2  的简写。效率上来讲，加号和赋值符号组合成的一个运算符能够同时进行这两个操作。
    /**
     注意

     组合运算符不会返回任何值。举例来说，你不能写成这样 let b = a += 2  。这个与前边提到的增量和减量符号的行为不同。

     你可以在 表达式 找到组合赋值符号的完整列表。
     */
    
    
    
    
    
    //比较运算符
    /**
     Swift 支持所有 C 的标准比较运算符：

     相等 ( a == b )
     不相等 ( a != b )
     大于 ( a > b )
     小于 ( a < b )
     大于等于 ( a >= b )
     小于等于 ( a <= b )
     */
    
    /**
     注意

     Swift 同时也提供两个等价运算符（ ===  和 !== ），你可以使用它们来判断两个对象的引用是否相同。参考 类和结构体  来了解更多。
     */
    
    //每个比较运算符都会返回一个 Bool  值来表示语句是否为真：
    //例如:
    let name = "world"
    if name == "world" {
        print("hello, world")
    } else {
        print("I'm sorry \(name), but I don't recognize you")
    }
    
    /**
     你同样可以比较拥有同样数量值的元组，只要元组中的每个值都是可比较的。比如说， Int 和 String 都可以用来比较大小，也就是说 (Int,String) 类型的元组就可以比较。一般来说， Bool 不能比较，这意味着包含布尔值的元组不能用来比较大小。

     元组以从左到右的顺序比较大小，一次一个值，直到找到两个不相等的值为止。如果所有的值都是相等的，那么就认为元组本身是相等的。比如说：
     */
    
    (1, "zebra") < (2, "apple")   // true because 1 is less than 2
    (3, "apple") < (3, "bird")    // true because 3 is equal to 3, and "apple" is less than "bird"
    (4, "dog") == (4, "dog")      // true because 4 is equal to 4, and "dog" is equal to "dog"
    /**
     注意

     Swift 标准库包含的元组比较运算符仅支持小于七个元素的元组。要比较拥有七个或者更多元素的元组，你必须自己实现比较运算符。
     */
    
    
    
    
    
    
    
    //三元条件运算符
    
    /**
     三元条件运算符是一种有三部分的特殊运算，它看起来是这样的： question ? answer1 : answer2  。这是一种基于 question  是真还是假来选择两个表达式之一的便捷写法。如果 question  是真，则会判断为 answer1  并且返回它的值；否则，它判断为 answer2  并且返回它的值。

     三元条件运算符就是下边代码的简写：

     if question {
         answer1
     } else {
         answer2
     }
     */
    
    let contentHeight = 40
    let hasHeader = true
    let rowHeight = contentHeight + (hasHeader ? 50 : 20)
    print(contentHeight, rowHeight) //40 90
    
    /*
     三元条件运算符提供了一个非常有效的简写来决策要两个表达式之间选哪个。总之，使用三元条件运算符要小心。它的简洁性会导致你代码重用的时候失去易读的特性。避免把多个三元条件运算符组合到一句代码当中。
     */
    
    
    
    
    
    
    
    
    //合并空值运算符
    /*
     合并空值运算符 （ a ?? b ）如果可选项 a  有值则展开，如果没有值，是 nil  ，则返回默认值 b 。表达式 a 必须是一个可选类型。表达式 b  必须与 a  的储存类型相同。

     合并空值运算符是下边代码的缩写：

     a != nil ? a! : b

     上边的代码中，三元条件运算符强制展开（ a! ）储存在 a  中的值，如果 a  不是 nil  的话，否则就返回 b  的值。合并空值运算符提供了更加优雅的方式来封装这个条件选择和展开操作，让它更加简洁易读。
     
     注意

     如果 a  的值是非空的， b  的值将不会被考虑。这就是所谓的 短路计算 。
     
     */
    
    let defaultColor = "red"
    
    var userDefineColor: String?
    var colorToUse = userDefineColor ?? defaultColor
    
    print(colorToUse) // red
    
    //如果你给 userDefineColor  指定一个非空的值然后让合并空值运算符在检查一次，那么 userDefinedColorName  中封装的值将会替换掉默认值：
    userDefineColor = "yellow"
    colorToUse = userDefineColor ?? defaultColor
    print(colorToUse) // yellow
    
    
    
    
    
    //区间运算符
    //Swift 包含了两个 区间运算符 ，他们是表示一个范围的值的便捷方式。
    
    
    /**
     闭区间运算符
     闭区间运算符（ a...b ）定义了从 a  到 b  的一组范围，并且包含 a 和 b 。 a 的值不能大于 b 。

     在遍历你需要用到的所有数字时，使用闭区间运算符是个不错的选择，比如说在 for-in  循环当中：
     */
    
    for index in (1...7) {
        print("pppasdzzxc\(index * 12)")
    }
    
    
    /**
     半开区间运算符
     半开区间运算符（ a..<b ）定义了从 a  到 b  但不包括 b  的区间，即 半开 ，因为它只包含起始值但并不包含结束值。（十奶注：其实就是左闭右开区间。）如同闭区间运算符， a  的值也不能大于 b  ，如果 a  与 b  的值相等，那返回的区间将会是空的。

     半开区间在遍历基于零开始序列比如说数组的时候非常有用，它从零开始遍历到数组长度（但是不包含）
     */
    
    let names = ["Anna", "Alex", "Brian", "Jack"]
    
    for i in 0..<names.count {
        print("Person \(i + 1) is called \(names[i])")
    }
//    Person 1 is called Anna
//    Person 2 is called Alex
//    Person 3 is called Brian
//    Person 4 is called Jack
    
    
    
    /**
     单侧区间
     闭区间有另外一种形式来让区间朝一个方向尽可能的远——比如说，一个包含数组所有元素的区间，从索引 2 到数组的结束。在这种情况下，你可以省略区间运算符一侧的值。因为运算符只有一侧有值，所以这种区间叫做单侧区间。比如说：
     */
    for name in names[2...] {
        print(name)
    }
    // Brian
    // Jack
     
    for name in names[...2] {
        print(name)
    }
    // Anna
    // Alex
    // Brian
    
    //半开区间运算符同样可以有单侧形式，只需要写它最终的值。和你两侧都包含值一样，最终的值不是区间的一部分。举例来说：
    for name in names[..<2] {
        print(name)
    }
    // Anna
    // Alex
    
    /**
     单侧区间可以在其他上下文中使用，不仅仅是下标。
     你不能遍历省略了第一个值的单侧区间，因为遍历根本不知道该从哪里开始。
     你可以遍历省略了最终值的单侧区间；
     总之，由于区间无限连续，你要确保给循环添加一个显式的条件。
     你同样可以检测单侧区间是否包含特定的值，就如下面的代码所述。
     */
    
    let range = ...5
    range.contains(7)   // false
    range.contains(4)   // true
    range.contains(-1)  // true
    
    
    
    
    
    
//    逻辑运算符
    /**
     逻辑运算符可以修改或者合并布尔逻辑值 true  和 false  。Swift 支持三种其他基于 C 的语言也包含的标准逻辑运算符

     逻辑 非  ( !a )
     逻辑 与  ( a && b )
     逻辑 或  ( a || b )
     */
    
    
//    混合逻辑运算
    /*
     可以组合多个逻辑运算符来创建一个更长的组合表达式：

     if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
         print("Welcome!")
     } else {
         print("ACCESS DENIED")
     }
     */
    
    
    //然而上面一通混合逻辑运算操作没啥太大意义， 加括号多好
    
    //显式括号
}
