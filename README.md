# RGBSemaphore
Swift + Orange Pi + LEDs

# Setup

## Clone this repo

    git clone https://github.com/adagio/RGBSemaphore

## Go inside RGBSemaphore

    cd RGBSemaphore

## Build (will show errors)

    swift build

## Patch code

In

    Packages/CStatfs-1.0.0/module.modulemap

Replace

    x86_64-linux-gnu
   
by

    arm-linux-gnueabihf

## Build

    swift build

## Run

    sudo .build/debug/RGBSemaphore

LEDs will turn on in RGB sequential way.

