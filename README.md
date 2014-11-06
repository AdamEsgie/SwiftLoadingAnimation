loading-animation
=================

Cocoa Library that allows one to easily add a loading animation to any project.

The animation consists of three circles growing and shrinking in succession.

The library allows for customization of the size, color, speed of the animation/circles.

![example](https://dl.dropboxusercontent.com/u/13225319/loadingExample.png)

### For use:

1) Download or clone the repo

2) Add the LoadAnimationLibrary folder to your project

3) Import the LoadingView.h into the appropriate location

3) Initialize the object and set the circle size

    LoadingView *loading = [[LoadingView alloc] initWithCircleSize:6.0f];
    
4) Add the object to a view in the desired position

    [loading showInView:self.view withCenterPoint:CGPointMake(self.size.width/2, self.size.height/2)];
    
5) If you desire opacity, specify starting #

    [loading addStartingOpacity:0.5];

6) When ready, begin animation

    [loading startAnimating];
    
7) When ready, end animation

    [loading stopAnimating];
    
8) Hide/Show as desired

    [loading hide];
    
# Credits:
Props to [Matt Yu](http://www.mattyu.ca/) for design.  This was created as a part of the [Birdseye Mail](http://www.birdseyemail.com/) email project.

# License:
loading-animation is available under the MIT license. See the LICENSE file for more info.
