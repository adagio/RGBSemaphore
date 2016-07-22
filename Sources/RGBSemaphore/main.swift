
import Glibc

let gpioPA6 = GPIO(sunXi: SunXiGPIO(letter: .A, pin: 6))
let gpioPA1 = GPIO(sunXi: SunXiGPIO(letter: .A, pin: 1))
let gpioPA0 = GPIO(sunXi: SunXiGPIO(letter: .A, pin: 0))

let gpioR = gpioPA0
let gpioG = gpioPA1
let gpioB = gpioPA6

let gpios = [
  gpioR,
  gpioG,
  gpioB
]

for gpio in gpios {
  gpio.direction = .OUT
}

for gpio in gpios {
  gpio.value = 0
}

var turn = 0

repeat {
  usleep(1000*1000)
  switch turn {
    case 0:
      gpioB.value = 0
      gpioR.value = 1
      turn = 1
      break
    case 1:
      gpioR.value = 0
      gpioG.value = 1
      turn = 2
      break
    case 2:
      gpioG.value = 0
      gpioB.value = 1
      turn = 0
      break
    default:
      print("default turn")
  }
} while(true)

