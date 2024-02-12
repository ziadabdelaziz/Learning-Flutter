# Advanced Fundamentals
11-2-2024

### 1- Adding Icons to Buttons
* we can add icon to a button using `OutlinedButton.icon`, the icon constructor function requires `icon` and `label` parameters to be specified.
* ex.
```
OutlinedButton.icon(
    onPressed: (){},
    icon: const Icon(Icons.arrow_right_alt),
    ...
)
```
* Icon class takes a parameter of type `IconData`, you can press `ctl+space` after `Icons.` to see a list of possible icons.


### 2- Adding Transparency to Widgets
* wrapping the widget that we want to be transparent with `Opacity` widget which requires `opacity` parameter to be specified, which values range from 0 to 1.<br>
&nbsp; -> this way is performance intensive and it's preferable to avoid it.
* the better approach, when the widget have color parameter.
* ex.
```
Image.asset(
    'assets/images/quiz-logo.png',
    color: const Color.fromARGB(150, 255, 255, 255),
)
```
* this way we specefied the opacity of the image by using `fromARGB` instead.
