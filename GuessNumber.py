import random
guessNumber = random.randrange(1, 101)
# print(guessNumber) # Debugging

i = 0
while True:
    try:
        guess = int(input("Guess The Number: "))
        if guess > guessNumber:
            print("Too high! Try again.")
            i = i + 1
        elif guess < guessNumber:
            print("Too low! Try again.")
            i = i + 1
        elif guess == guessNumber:
            i = i + 1
            print("Congratulations! You guessed the number in", i, "tries!")
            break
    except ValueError:
        print("Number not recognized! Try again.")
