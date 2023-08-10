def main(n):
    if n <= 0:
        return {'result': None}
    elif n == 1:
        return {'result': 0}
    elif n == 2:
        return {'result': 1}
    else:
        a, b = 0, 1
        for _ in range(2, n):
            a, b = b, a + b
        return {'result': b}



