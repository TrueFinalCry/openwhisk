function main(params) {
  let n = params.n
  if (n <= 0) {
    return { result: null };
  } else if (n === 1) {
    return { result: 0 };
  } else if (n === 2) {
    return { result: 1 };
  } else {
    return { result: fibonacciLastNumberRec(n) };
  }
}

function fibonacciLastNumberRec(n) {
  if (n <= 0) {
    return 0;
  } else if (n === 1) {
    return 1;
  } else {
    return fibonacciLastNumberRec(n - 1) + fibonacciLastNumberRec(n - 2);
  }
}

