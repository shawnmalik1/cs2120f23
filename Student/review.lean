--Recurstion

def fact : Nat → Nat
| 0 => 1
| (n' + 1) => (n' + 1) * fact n'

def list_len {α : Type } : List α → Nat
| [] => 0
| h::t => 1 + list_len t

#eval list_len [true, true, true, false]


def sum_cubes : List Nat → Nat
| [] => 0
| h::t => h^3 + sum_cubes t

#eval sum_cubes [1, 2, 3, 4, 5]

--product of all the elements in a list
def product : List Nat → Nat
| [] => 1
| h::t => h * product t

#eval product [1, 2, 3, 4]


def is_even (n: Nat): Bool :=
if n % 2 = 0 then true else false 

#eval is_even 2
#eval is_even 19