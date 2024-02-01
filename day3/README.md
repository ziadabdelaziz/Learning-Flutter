# Foundations Cont.
1-2-2024

---
### 1- Variables
* they are **data containers**
* ex. `var startAlignment = Alignment.topLeft;`<br>
&nbsp; -> this how you store values in variables.<br>
&nbsp; -> `var` is the keyword used when defining a variable.<br>
&nbsp; -> `startAlignment` is the name of the variable (you can name it whatever you want, but try to make it descriptive), notice the naming (first word with lower case-caracter and words that follows start with upper-case).<br>
&nbsp; -> `=` it's the assignment operator which stores the right handside value into the left handside variable.
* when using `var` keyword you can change the value of the variable later.

### 2- Variables and Types
* each variable have a type.
* when initializing the variable, dart can infer it's type from the value assigned to it.
* but if the variable is declared without assigning a value to it initialy it will be `dynamic`.
* `dynamic` is type changing variable.
* you should specify the type of the variable when declaring it.
* ex. `Alignment? startAlignment`<br>
&nbsp; -> `Alignment` is the type of the variable.<br>
&nbsp; -> `?` this tells dart that this variable can be `NULL` which means it doesn't have a value.

### 3- final & const
* `final` and `const` are keywords to define a variable that it's value doesn't change.
* but there is a difference between them.
* when using `const` you're telling dart that the value stored is a **compile time constant**.<br>
&nbsp; -> which means it's locked-in at the point of time this code is compiled.
* `final` is used when getting a value that is not known at the point this code is compiled (known when the code is executed).<br>
&nbsp; -> ex. `final startAlginment = getAlignment();`<br>
&nbsp; -> the value of the function is not know yet, it needs to be executed to get the value.

### 4- Properties(Instance Variables)

|title|title1|title2|
|-----|------|------|
|row1 |row1co1|row1co2|