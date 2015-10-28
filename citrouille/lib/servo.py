import RPi.GPIO as GPIO
import time
PIN = 3

GPIO.cleanup()

GPIO.setmode(GPIO.BOARD)

GPIO.setup(PIN, GPIO.OUT)

p = GPIO.PWM(PIN, 50)

p.start(3)
time.sleep(1)
p.start(8)
time.sleep(2)
