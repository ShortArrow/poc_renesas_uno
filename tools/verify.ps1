$includes = @(
    "-I./",
    "-I./Arduino/data/packages/arduino/tools/arm-none-eabi-gcc",
    "-I./Arduino/data/packages/arduino/hardware/renesas_uno/1.1.0/variants/MINIMA",
    "-I./Arduino/data/packages/arduino/hardware/renesas_uno/1.1.0/libraries/Arduino_CAN/src",
    "-I./Arduino/data/packages/arduino/hardware/renesas_uno/1.1.0/libraries",
    "-I./Arduino/data/packages/arduino/hardware/renesas_uno/1.1.0/cores/arduino/api/tinyusb",
    "-I./Arduino/data/packages/arduino/hardware/renesas_uno/1.1.0/cores/arduino/api/deprecated",
    "-I./Arduino/data/packages/arduino/hardware/renesas_uno/1.1.0/cores/arduino/api/deprecated-avr-comp",
    "-I./Arduino/data/packages/arduino/hardware/renesas_uno/1.1.0/cores/arduino/api",
    "-I./Arduino/data/packages/arduino/hardware/renesas_uno/1.1.0/cores/arduino",
    "-I./Arduino/user",
    "-I./Arduino/data/packages/arduino/tools/arm-none-eabi-gcc/7-2017q4/arm-none-eabi/include"
)
$buildProperties = $includes -join " "
$fqbn = "arduino:renesas_uno:minima"

arduino-cli compile `
--build-path build `
--log `
--config-file arduino-cli.yaml `
--fqbn $fqbn `
--build-property "compiler.cpp.extra_flags=$buildProperties"
