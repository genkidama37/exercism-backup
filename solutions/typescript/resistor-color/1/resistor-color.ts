export const colorCode = (colorName: string): number => {
  let colorValue: number = COLORS.indexOf(colorName)

  return colorValue
}

export const COLORS = [
  'black',
  'brown',
  'red',
  'orange',
  'yellow',
  'green',
  'blue',
  'violet',
  'grey',
  'white',
]
