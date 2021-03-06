!
! The Laboratory of Algorithms
!
! The MIT License
!
! Copyright 2011-2015 Andrey Pudov.
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

module MFeature

    use MFArrays
    use MFReallocation

    use MFInheritance
    !use MFConstructor

    use MFOpemMPExample1
    use MFOpemMPExample2
    use MFOpemMPExample3
    use MFOpemMPExample4

    implicit none
    private

    type, public :: TFeature
    contains
        procedure :: present
    end type
contains
    subroutine present(instance)
        class(TFeature), intent(in) :: instance

        type(TFArrays)       arrays
        type(TFReallocation) reallocation

        type(TFInheritance)  inheritance
        !type(TFConstructor)  constructor

        type(TFExample1) openMPEx1
        type(TFExample2) openMPEx2
        type(TFExample3) openMPEx3
        type(TFExample4) openMPEx4

        !constructor = TFConstructor(6)
        !call constructor%method()

        !call arrays%present()
        !call reallocation%present()

        !call inheritance%present()

        !call openMPEx1%present()
        !call openMPEx2%present()
        !call openMPEx3%present()
        call openMPEx4%present()
    end subroutine
end module
