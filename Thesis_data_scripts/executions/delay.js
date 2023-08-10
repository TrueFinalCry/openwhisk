function main(params) {
  let delay = params.delay || 0;
  return new Promise((resolve, reject) => {
    setTimeout(() => {
      resolve({ message: `Delay complete: ${delay} ms` });
    }, delay);
  });
}
