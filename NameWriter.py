import time
import os

def cool_animation(word):

    i = 0
    
    while(True):
        i = i + 1
        wordSoFar = "" 
        for char in word:
            for letter in "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ":
                if letter == char:
                    wordSoFar = wordSoFar + letter

                    if(not wordSoFar == word):
                        print(wordSoFar + letter, end="\r", flush=True)
                    else:
                        print(str(i) + ". " + wordSoFar, end="\r", flush=True)
                        
                    time.sleep(0.025)
                    break
                else:
                    print(wordSoFar + letter, end="\r", flush=True)
                    time.sleep(0.025)
            print("", end="")
        print("\n======")

# Input your word
input_word = input("Enter a word: ")
cool_animation(input_word)
