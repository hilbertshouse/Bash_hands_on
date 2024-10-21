## Gedit 
```bash
gedit myscript.sh
```

### File Permissions (chmod)
```bash
chmod +x myscript.sh
```
## Bash Scripting Basics

### 1. Hello World
```bash
#!/bin/bash
echo "Hello, World!"
```

### 2. Variables
```bash
#!/bin/bash
name="John"
echo "Hello, $name!"
```

### 3. User Input
```bash
#!/bin/bash
echo "Enter your name:"
read name
echo "Hello, $name!"
```

### 4. If-Else Statement
```bash
#!/bin/bash
echo "Enter a number:"
read number
if [ $number -gt 10 ]
then
    echo "The number is greater than 10."
else
    echo "The number is 10 or less."
fi
```

### 5. Loops

#### For Loop
```bash
#!/bin/bash
for i in {1..5}
do
    echo "Welcome $i times"
done
```

#### While Loop
```bash
#!/bin/bash
counter=1
while [ $counter -le 5 ]
do
    echo "Counter: $counter"
    ((counter++))
done
```

### 6. Functions
```bash
#!/bin/bash
greet() {
    echo "Hello, $1!"
}
greet "World"
```

### 7. Command Line Arguments
```bash
#!/bin/bash
echo "Script Name: $0"
echo "First Argument: $1"
echo "Second Argument: $2"
```

### 8. File Check
```bash
#!/bin/bash
filename="test.txt"
if [ -f $filename ]
then
    echo "$filename exists."
else
    echo "$filename does not exist."
fi
```

### 9. Case Statement
```bash
#!/bin/bash
echo "Enter a number between 1 and 3:"
read num
case $num in
    1) echo "You entered 1." ;;
    2) echo "You entered 2." ;;
    3) echo "You entered 3." ;;
    *) echo "Invalid input." ;;
esac
```

### 10. Exit Status
```bash
#!/bin/bash
ls /some/directory
if [ $? -eq 0 ]
then
    echo "Command succeeded."
else
    echo "Command failed."
fi
```

### 11. Redirecting Output
```bash
#!/bin/bash
echo "This is a test" > test.txt
echo "Appending to file" >> test.txt
cat test.txt
```

### 12. Using `&&` and `||` for Shortcuts
```bash
#!/bin/bash
mkdir new_directory && echo "Directory created" || echo "Failed to create directory"
```

### 13. Arithmetic Operations
```bash
#!/bin/bash
a=5
b=3
sum=$((a + b))
echo "Sum: $sum"
```

### 14. Arrays
```bash
#!/bin/bash
fruits=("Apple" "Banana" "Orange")
echo "First fruit: ${fruits[0]}"
echo "All fruits: ${fruits[@]}"
```

