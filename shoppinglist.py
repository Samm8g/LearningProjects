shoppingList = [""]
while True:
    listitem = input('Add an item to Shopping List: ').casefold()
    shoppingList.append(listitem)
    if listitem.casefold() == 'done':
        shoppingList.pop()
        break

print("\nShopping List:")
shoppingList.pop(0)
if not shoppingList:
    print("Your list is empty.")
for item in shoppingList:
    print(item)

confirm = str(input("Check if an item is on the list?: ")).casefold()
if confirm == 'yes':
    check_item = input("Enter item to check: ").casefold()
    if check_item in [item.casefold() for item in shoppingList]:
        print(f"'{check_item}' is on the list!")
    else:
        print(f"'{check_item}' is NOT on the list.")    
elif confirm == 'no':
    print("Ok")

else:
    print("Couldn't read")
