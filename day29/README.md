# Multiple Screens and Navigation
10-3-2024

### 1- PageView
* `PageView` widget give us the ability to swipe the screen to navigate between application screens.
```
final PageController _pageController = PageController(initialPage: 0);

int _activePage = 0;

final List<Widget> _pages = [
    const PageOne(),
    const PageTwo(),
    const PageThree(),
];

PageView.builder(
    controller: _pageController,
    onPageChanged: (int pageIndex) {
        _activePage = pageIndex;
    }
    itemCount: _pages.length,
    itemBuilder: (buildContext context, int index) {
        return _pages[index];
    }
)
``` 
