const COLORS = [
  'black', // -> 0
  'brown', // -> 1
  'red', // -> 2
  'orange', // -> 3
  'yellow', // -> 4
  'green', // -> 5
  'blue', // -> 6
  'violet', // -> 7
  'grey', // -> 8
  'white', // -> 9
]

export function decodedResistorValue([band1, band2, band3]: string[]) {
  // ['orange', 'orange', 'black'] -> 33 * 10^0 =  33 * 1 = 33
  // ['blue', 'grey', 'brown'] -> 68 * 10^1 = 68 * 10 = 680
  // ['red', 'black', 'red'] ->  20 * 10^2 = 20 * 100 = 2.000 -> 2 kiloohms
  // ['blue', 'violet', 'blue'] -> 67 * 10^6 = 67 * 1000000 = 67.000.000 -> 67 megaohms
  const tens = COLORS.indexOf(band1) * 10
  const ones = COLORS.indexOf(band2)
  const exponent = COLORS.indexOf(band3)

  const resistorValue = (tens + ones) * Math.pow(10, exponent)

  // the order of the if statments is important and a change on the order might lead to wrong results
  if (resistorValue === 0) {
  } else if (resistorValue % 1000000 === 0) {
    return `${resistorValue / 1000000} megaohms`
  } else if (resistorValue % 1000 === 0) {
    return `${resistorValue / 1000} kiloohms`
  }

  return `${resistorValue} ohms`
}
