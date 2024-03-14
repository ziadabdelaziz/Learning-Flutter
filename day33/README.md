# Managing App-wide State
14-3-2024

### 1- State-Management problem
* when working on mobile application you need to manage the state of the application which can be quite cumbersome.
* if there is a data on the root widget and you are performing a change on the data from a leave widget, you need to pass the reference for this data through all the widgets from the root to the leave.
* since it's a problem to do that and the code will be messy, we can use **Riverpod** package to solve this problem.
* **Riverpod** is a package used for *state-management* in our application.
* this package create `Provider` which can provide a dynamic value or methods that can change this value and any widget can use `Consumer` which can use the value and the methods in the `Provider`.
