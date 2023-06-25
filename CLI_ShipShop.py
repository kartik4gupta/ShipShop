import mysql.connector

db = mysql.connector.connect(
    host="localhost",
    user="root",
    password="bazinga413",
    database="SHIPSHOP"
)

cursor = db.cursor()

def main_menu():
    print("Welcome to ShipShop!")
    while True:
        print("\nPlease select an option:")
        print("1. Login as Admin")
        print("2. Login as Customer")
        print("3. Quit")
        choice = input("Enter your choice:(1-3) ")
        if choice == "1":
            admin_menu()
        elif choice == "2":
            customer_menu()
        elif choice == "3":
            print("Exiting Shipshop!")
            break
        else:
            print("Invalid choice, please try again.")

def admin_menu():
    Admin_id = input("Enter your id: ")
    password = input("Enter your password: ")

    cursor.execute("SELECT * FROM Admin WHERE id = %s AND AdminPassword = %s", (Admin_id, password))
    admin = cursor.fetchone()
    if admin:
        print("Login successful!")
        while True:
            print("\nPlease select an option:")
            print("1. View all customers")
            print("2. View all orders")
            print("3. View order history for a customer")
            print("4. Logout")
            choice = input("Enter your choice: ")
            if choice == "1":
                cursor.execute("SELECT * FROM Customer")
                customers = cursor.fetchall()
                for customer in customers:
                    print(customer)
            elif choice == "2":
                cursor.execute("SELECT * FROM Orders")
                orders = cursor.fetchall()
                for order in orders:
                    print(order)
            elif choice == "3":
                customer_id = input("Enter customer ID: ")
                cursor.execute("SELECT * FROM Orders WHERE C_id = %s", (customer_id,))
                orders = cursor.fetchall()
                for order in orders:
                    print(order)
            elif choice == "4":
                print("Logout successful!")
                break
            else:
                print("Invalid choice, please try again.")
    else:
        print("Invalid username or password.")


def customer_menu():
    phone = input("Enter your phone number: ")
    password = input("Enter your password: ")

    cursor.execute("SELECT * FROM Customer WHERE Phone = %s AND LoginPassword = %s", (phone, password))
    customer = cursor.fetchone()
    if customer:
        print("Login successful!")
        while True:
            print("\nPlease select an option:")
            print("1. View all products")
            print("2. View your cart")
            print("3. Add a product to your cart")
            print("4. Remove a product from your cart")
            print("5. Cart Total")
            print("6. View personal information")
            print("7. Update personal information")
            print("8. Checkout cart")
            print("9. Logout")
            choice = input("Enter your choice: ")
            if choice == "1":
                cursor.execute("SELECT * FROM Product")
                products = cursor.fetchall()
                for product in products:
                    print(product)
            elif choice == "2":
                cursor.execute("SELECT * FROM Cart WHERE C_id = %s", (customer[0],))
                cart = cursor.fetchone()
                if cart:
                    cursor.execute("SELECT p.Name, ci.Quantity, p.Price * ci.Quantity AS Total FROM cart_items ci JOIN Product p ON ci.p_id = p.id WHERE ci.cart_id = %s", (cart[0],))
                    cart_items = cursor.fetchall()
                    for item in cart_items:
                        print(item)
                else:
                    print("Your cart is empty.")
            elif choice == "3":
                cursor.execute("SELECT * FROM Product")
                products = cursor.fetchall()
                for product in products:
                    print(product)
                product_id = input("Enter product ID: ")
                quantity = input("Enter quantity: ")
                cursor.execute("SELECT * FROM Cart WHERE C_id = %s", (customer[0],))
                cart = cursor.fetchone()
                if cart:
                    cursor.execute("INSERT INTO cart_items (cart_id, p_id, Quantity) VALUES (%s, %s, %s)", (cart[0], product_id, quantity))
                    db.commit()
                else:
                    cursor.execute("INSERT INTO Cart (C_id) VALUES (%s)", (customer[0],))
                    db.commit()
                    cart_id = cursor.lastrowid
                    cursor.execute("INSERT INTO cart_items (cart_id, p_id, Quantity) VALUES (%s, %s, %s)", (cart_id, product_id, quantity))
                    db.commit()
            elif choice == "4":
                cursor.execute("SELECT * FROM Cart WHERE C_id = %s", (customer[0],))
                cart = cursor.fetchone()
                if cart:
                    cursor.execute("SELECT p_id FROM cart_items WHERE cart_id = %s", (cart[0],))
                    products = cursor.fetchall()
                    for product in products:
                        print(product)
                    product_id = input("Enter product ID: ")
                    cursor.execute("DELETE FROM cart_items WHERE cart_id = %s AND p_id = %s", (cart[0], product_id))
                    db.commit()
                else:
                    print("Your cart is empty.")


            elif choice == "5":
                cursor.execute("SELECT * FROM Cart WHERE C_id = %s", (customer[0],))
                cart = cursor.fetchone()
                if cart:
                    cursor.execute("SELECT p_id, Quantity FROM cart_items WHERE cart_id = %s", (cart[0],))
                    items = cursor.fetchall()
                    tot_price = 0
                    for item in items:
                        cursor.execute("SELECT Price FROM Product WHERE id = %s", (item[0],))
                        tot_price = tot_price + item[1]*cursor.fetchone()[0]
                    print(tot_price)
                else:
                    print("Your cart is empty.")
            elif choice=="6":
                cursor.execute("SELECT * FROM Customer WHERE id = %s", (customer[0],))
                customer_info = cursor.fetchone()
                print(f"Name: {customer_info[1]} {customer_info[2]} {customer_info[3]}")
                print(f"Address: {customer_info[5]}")
                print(f"Email: {customer_info[4]}")
                print(f"Phone: {customer_info[6]}")
            elif choice=="7":
                cursor.execute("SELECT * FROM Customer WHERE id = %s", (customer[0],))
                customer_info = cursor.fetchone()
                print(f"Name: {customer_info[1]} {customer_info[2]} {customer_info[3]}")
                print(f"Address: {customer_info[5]}")
                print(f"Email: {customer_info[4]}")
                print(f"Phone: {customer_info[6]}")
                print("\nPlease select an option:")
                print("1. Update name")
                print("2. Update address")
                print("3. Update email")
                print("4. Update phone")
                print("5. Go back")
                update_choice = input("Enter your choice: ")
                if update_choice == "1":
                    new_name = input("Enter new name: ")
                    cursor.execute("UPDATE Customer SET Name = %s WHERE id = %s", (new_name, customer[0]))
                    db.commit()
                    print("Name updated successfully.")
                elif update_choice == "2":
                    new_address = input("Enter new address: ")
                    cursor.execute("UPDATE Customer SET Address = %s WHERE id = %s", (new_address, customer[0]))
                    db.commit()
                    print("Address updated successfully.")
                elif update_choice == "3":
                    new_email = input("Enter new email: ")
                    cursor.execute("UPDATE Customer SET Email = %s WHERE id = %s", (new_email, customer[0]))
                    db.commit()
                    print("Email updated successfully.")
                elif update_choice == "4":
                    new_phone = input("Enter new phone number: ")
                    if len(new_phone) != 10 or not new_phone.isdigit():
                        print("Invalid Phone number.")
                    else:
                        cursor.execute("UPDATE Customer SET Phone = %s WHERE id = %s", (new_phone, customer[0]))
                        db.commit()
                        print("Phone number updated successfully.")
                elif update_choice == "5":
                    pass
                else:
                    print("Invalid choice. Please try again.")
            elif choice == "8":
                cursor.execute("SELECT * FROM Cart WHERE C_id = %s", (customer[0],))
                cart = cursor.fetchone()
                if cart:
                    cursor.execute("SELECT p_id, Quantity FROM cart_items WHERE cart_id = %s", (cart[0],))
                    items = cursor.fetchall()
                    tot_price = 0
                    for item in items:
                        cursor.execute("SELECT Price FROM Product WHERE id = %s", (item[0],))
                        tot_price = tot_price + item[1]*cursor.fetchone()[0]
                    print(f"Total price: {tot_price}")
                    address = input("Enter your delivery address: ")
                    # mode_of_payment="To be entered"
                    # while(mode_of_payment!=mode_of_payment!="COD" or mode_of_payment!="Credit Card"):
                    mode_of_payment = input("Select mode of payment: COD or Credit Card: ")
                    
                    cursor.execute("SELECT MAX(id) FROM Orders")
                    Last_order = cursor.fetchone()
                    # print(Last_order[0])
                    l=int(Last_order[0])
                    cursor.execute("SELECT * FROM Cart WHERE C_id = %s", (customer[0],))
                    cart = cursor.fetchone()
                    tot_price = 0
                    if cart:
                        cursor.execute("SELECT p_id, Quantity FROM cart_items WHERE cart_id = %s", (cart[0],))
                        items = cursor.fetchall()
                        for item in items:
                            cursor.execute("SELECT Price FROM Product WHERE id = %s", (item[0],))
                            tot_price = tot_price + item[1]*cursor.fetchone()[0]
                        
                    l=l+1
                    a=str(l)
                    b=address
                    c=str(tot_price)
                    d=str(tot_price*0.2)
                    e="4001"
                    f="4"
                    g=mode_of_payment
                    h="1000"
                    i=customer[0]
                    if(c!="0"):
                        cursor.execute("INSERT INTO Orders (id, Address, Total, Discount, S_id, Delivery_Time, Mode_of_Payment, A_id, C_id) VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s)",(a,b,c,d,e,f,g,h,i))
                        order_id = cursor.lastrowid
                        db.commit()
                        cursor.execute("SELECT * FROM Cart WHERE C_id = %s", (customer[0],))
                        cart = cursor.fetchone()
                        cursor.execute("SELECT * FROM cart_items WHERE cart_id = %s", (customer[0],))
                        # cursor.execute("SELECT p.Name, ci.Quantity, p.Price * ci.Quantity AS Total FROM cart_items ci JOIN Product p ON ci.p_id = p.id WHERE ci.cart_id = %s", (cart[0],))
                        cart_items = cursor.fetchall()
                        for item in cart_items:
                                cursor.execute("")
                                cursor.execute("insert into order_items (order_id, p_id, Quantity) values (%s, %s, %s)",(a,item[1],item[2]))
                        
                        db.commit()
                        print("Order placed successfully!")
                    else:
                        print("Your cart is empty.")

            elif choice=="9":
                print("Logout successful!")
                break

                
main_menu()

db.close()







