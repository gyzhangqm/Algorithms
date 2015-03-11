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

module MUnit

    use MUFibonacci
    use MUGreatestCommonDivisor

    use MUSearch
    use MUShift
    use MUSort

    use MUBubbleSort
    use MUInsertionSort
    use MUMergeSort
    use MUQuickSort
    use MURadixSort
    use MUSelectionSort
    use MUShellSort

    use MUArrayStack
    use MUArrayQueue
    use MULinkedList

    implicit none
    private

    type, public :: TUnit
    contains
        procedure :: present
    end type

contains
    subroutine present(instance)
        class(TUnit), intent(in) :: instance

        type(TUFibonacci)             fibonacci
        type(TUGreatestCommonDivisor) greatestCommonDivisor

        type(TUSearch) search
        type(TUShift)  shift
        type(TUSort)   sort

        type(TUBubbleSort)    bubbleSort
        type(TUInsertionSort) insertionSort
        type(TUMergeSort)     mergeSort
        type(TUQuickSort)     quickSort
        type(TURadixSort)     radixSort
        type(TUSelectionSort) selectionSort
        type(TUShellSort)     shellSort

        type(TUArrayStack) arrayStack
        type(TUArrayQueue) arrayQueue
        type(TULinkedList) linkedList

        !call fibonacci%present()
        !call greatestCommonDivisor%present()

        !call search%present()
        !call shift%present()

        !call sort%present()
        !call bubbleSort%present()
        !call insertionSort%present()
        !call mergeSort%present()
        call quickSort%present()
        call radixSort%present()
        !call selectionSort%present()
        !call shellSort%present()

        !call arrayStack%present()
        !call arrayQueue%present()
        !call linkedList%present()
    end subroutine
end module
