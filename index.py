import face_recognition as faceRegLib
import pyttsx3
import pyrebase
import cv2
import numpy as np
import serial
import os
import time
from faceRec import faceRecognition as fr 
from fingerRec import fingerPrintRec as fnr
from locationRec import verify_location as vl
from app import app
import webbrowser
from recognize_final import recognize_from_voice as rfv

# initialize the text-to-speech engine
engine = pyttsx3.init()

# set the properties of the voice
voices = engine.getProperty('voices')
engine.setProperty('voice', voices[1].id)  # set the voice to the second one

def say(text):
    engine.say(text)
    engine.runAndWait()


#reading tag from serial monitor
serial_port = serial.Serial('COM7', 9600)
counter = 0 
img_name= ""

while counter < 3:
    data = serial_port.readline().decode('utf-8').rstrip()
    if counter == 0:
        say(data)

    if(counter == 1):
        img_name = data[10:12]

    counter += 1

#creating list of images in the storage

dir="C:/Users/LENOVO/OneDrive/Desktop/idp/images"

images = os.listdir(dir)

img_name = img_name + ".jpg"

if img_name in images:

    say("Get ready for image verification")

    time.sleep(5)

    imgLoc = r"C:\Users\LENOVO\OneDrive\Desktop\idp\images\{}".format(img_name)

    #face verification
    if(fr(imgLoc)):
        say("Face Verified")
        
        time.sleep(5)

        #fingerprint verification
        
        say("Put your thumb on the sensor for fingerprint verification")
        ser = serial.Serial('COM8', 9600)
        time.sleep(2)
        ser.write(b'1')
        time.sleep(7)
        ser.close()
        time.sleep(2)

        if(fnr()):
            say("Fingerprint Verified")
            time.sleep(2)

            #location verification
            say("Verifying Your Location. Please Open the Location app on the phone")
            time.sleep(20)
            if(vl()):
                say("Your location has been verified")
                time.sleep(2)
                #speech - verification
                if rfv():
                    say("Voice Verified")
                    #cash withdrawal
                    time.sleep(2)
                    app.run()

                else:
                    say("Voice Not Verified")

            else:
                say("Location Not Verified")

        else:
            say("You have attempted 3 times. You can try again later")

    else:
        say("Face Not Verified. Try again later")
else:
    say("User Not Found")