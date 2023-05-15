mport speech_recognition as sr
import pyttsx3

# Initialize the SpeechRecognition and pyttsx3 engines
r = sr.Recognizer()
engine = pyttsx3.init()

# Speak a prompt to the user before starting recognition
engine.say('Welcome Bank Customer Please speak the amount you want to withdraw from your account')
engine.runAndWait()

# Start recognition when the user presses Enter
# input('Press Enter to start recognition...')
with sr.Microphone() as source:
    print('Say something...')
    audio = r.listen(source)    
    # Convert speech to text
    result = r.recognize_google(audio)  
    # Print and speak the output
    print(f"You said: {result}")
    engine.say('Thank you for banking with us. We are processing your transaction for amount')
    engine.say(result)
    engine.runAndWait()