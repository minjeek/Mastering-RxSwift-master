//
//  Copyright (c) 2019 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import UIKit
import RxSwift

/*:
 # elementAt
 */

/*
 배열이나 버퍼에 담긴 값을 index로 뽑아줌
 */

let disposeBag = DisposeBag()
let fruits = ["🍏", "🍎", "🍋", "🍓", "🍇"]

// 배열을 입력했을 때
Observable.from(fruits)
    .elementAt(1)
    .subscribe { print($0) }
    .disposed(by: disposeBag)

// of 연산자로 복수의 value 를 넣었을 때
Observable.of("a", "b", "c")
    .elementAt(1)
    .subscribe { print($0) }
    .disposed(by: disposeBag)

// replay 연산자로 복수의 값을 저장해놨을 때
let replay = ReplaySubject<Int>.create(bufferSize: 5)
(1...5).forEach { replay.onNext($0) }

replay.elementAt(1)
    .subscribe { print($0) }
    .disposed(by: disposeBag)
    














