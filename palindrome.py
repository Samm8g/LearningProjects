while True:
    inputPalindrome = input("Enter a word or phrase to check (type 'exit' to quit): ").casefold()
    if inputPalindrome == 'exit':
        break
    if inputPalindrome == inputPalindrome[::-1]:
        print(inputPalindrome,"is a palindrome.")
    else:
        print(inputPalindrome,"is NOT a palindrome.")
