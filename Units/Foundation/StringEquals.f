!
! The Laboratory of Algorithms
!
! The MIT License
!
! Copyright 2011-2016 Andrey Pudov.
!
! Permission is hereby granted, free of charge, to any person obtaining a copy
! of this software and associated documentation files (the 'Software'), to deal
! in the Software without restriction, including without limitation the rights
! to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
! copies of the Software, and to permit persons to whom the Software is
! furnished to do so, subject to the following conditions:
!
! The above copyright notice and this permission notice shall be included in
! all copies or substantial portions of the Software.
!
! THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
! IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
! FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
! AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
! LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
! OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
! THE SOFTWARE.
!

submodule (UFoundation) StringEquals

    use Foundation

    use MUAsserts
    use MUReport

    type, extends(String) :: Text
        integer :: kind
    end type
contains
    module subroutine presentStringEquals()
        type(String) :: string1
        type(String) :: string2
        type(String) :: string3

        type(Text) :: text1

        real start

        call cpu_time(start)

        string1 = 'Hello, World!'
        string2 = 'Привет, Мир!'
        string3 = 'Hello, World!'
        text1   = 'Привет, Мир!'

        call assert_ok(string1%equals(string3), '[1]')
        call assert_ok(.not. string1%equals(string2), '[2]')
        call assert_ok(string2%equals(text1), '[3]')

        call string1%destroy()
        call string2%destroy()
        call string3%destroy()
        call text1%destroy()

        call report('Foundation', 'String', 'Equals', start)
    end subroutine
end submodule
