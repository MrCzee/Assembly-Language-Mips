.data
n1: .double 3.3
n2: .double 4.4
.text

ldc1 $f2, n1
ldc1 $f4, n2

mul.d $f12, $f2, $f4

li $v0, 3
syscall