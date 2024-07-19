+++
title="Building a Dehumidifier using a Raspberry Pi & Python"
description="A project to build a dehumidifier using a Raspberry Pi and Python"
draft=true
date=2024-07-19

[taxonomies]
tags = ["python", "raspberry-pi", "electronics", "3d-printing"]
categories = ["projects"]

[extra]
+++

# The problem

After replacing the old oil furnace in my parents house with a new heat pump (in another room), the basement has become more humid.
Since the old furnace was keeping the room warm and also forced air through the basement, it was also dehumidifying the room.
The new heat pump doesn't do that, so the basement has become more humid.


# Thinking about a solution

Obviously, buying a commercial solution to monitor the humidity and turn on a dehumidifier when needed is the easiest solution.
But where's the fun in that?

Since i already had a Pi 4 lying around, I thought it would be a fun project to build a dehumidifier using a Raspberry Pi and Python.

## BOM

- [Raspberry Pi 4](https://www.berrybase.de/detail/index/sArticle/5914?src=raspberrypi) @ ~50€
- [DHT21 sensor](https://www.makershop.de/sensoren/temperatur/dht21/) @ 9.70€
- [Relay](https://www.makershop.de/module/relais/1-kanal-relais/) @ 2.95€
- [TFT Display](https://www.az-delivery.de/en/products/1-8-zoll-spi-tft-display) @ 7.49€
- [Rotary encoder with push button](https://www.makershop.de/module/eingabe/drehregler-ky-040/) @ 3.75€
- [Breadboard](https://www.makershop.de/zubehoer/breadboard/breadboard-steckbrett/) @ 3.80€

Total cost (without shipping & raspberry pi): 27.69€

Additionally, you need some jumper wires, a USB-C power supply, screws and nuts to mount the components, acyrlic glass to mount the display and a 3D printer to print the case.

# The plan

The plan is to create an enclosure for the Raspberry Pi, breadboard, TFT display and rotary encoder.
The DHT21 sensor will be mounted further away from the enclosure to get a more accurate reading of the room temperature and humidity.
The relay itself, being a high voltage component, will be mounted in a separate enclosure.

## Tinkercad

I love the simplicity of [Tinkercad](https://www.tinkercad.com) for creating 3D models.
Since i am not a Mechanical Engineer, I have not learned how to use Fusion 360 or other professional CAD software.

Here's the model I created for the enclosure (Note: This is a later model to fix some of the problems i had in my print):

#### Case
{{ stl(name="entlueftung1", pid="2024-07-19-dehumidifier",height="500px") }}
### Cover
{{ stl(name="entlueftung2", pid="2024-07-19-dehumidifier",height="500px") }}
### Small cover for the rotary encoder
{{ stl(name="entlueftung3", pid="2024-07-19-dehumidifier",height="500px") }}


## The code

The full code for the project can be found on [GitHub](https://github.com/Scarjit/entlueftung)

