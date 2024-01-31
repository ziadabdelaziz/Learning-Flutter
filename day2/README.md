# Foundations Cont.
31-1-2024

Ending up with the previos example:

```
void main(){
    runApp(
        MaterialApp(
            home: Scaffold(
                body: Container(
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            colors: [
                                Color.fromARGB(255, 26, 2, 80),
                                Color.fromARGB(255, 45, 7, 98),
                            ],
                        ),
                    ),
                    child: const Center(
                        child: Text('Hello World!'),
                    ),
                ),
            ),
        ,)
    );
}
```

### 1- How to Cinfigure Widgets & Objects
* you can change other arguments to change the settings of the Widget
* ex. specify **begin** and **end** arguments of **LinearGradient** object<br>
```
begin: Alignment.topLeft,
end: Alignment.bottomRight,
```
