func output(n: Int) {
    if (n == 0) { // step 1 base case
        return
    } else {
        print(n) // step 2 perform the work
        output(n: n-1) // step 3 repeat recursion with smaller problem
    }
}

output(n: 6)


func output2(n: Int) -> Int{
    if (n == 0) {
        return 0
    } else {
        return n + output2(n: n-1)
    }
}

output2(n: 6)
print(output2(n: 6))
