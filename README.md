# BezierCurve

## What is Bezier Curve?
A Bezier Curve is obtained by defining a polygon. 

## How does it work? 
1. Magic
2. These are smart weights that describe the influence of each control point
3. It is a linear combination of basis of polynomials
  
  The opposite perspective: control points are the weights of polynomials!

## Tessellation
Definition: The process or art of tessellating a surface, or the state of being tessellated.
an arrangement of shapes closely fitted together, especially of polygons in a repeated pattern without gaps or overlapping.

<img src="https://github.com/anama118118/BezierCurve/blob/master/Media/TessellationBeforeAddingPoints.png" width="320" />

<img src="https://github.com/anama118118/BezierCurve/blob/master/Media/TessellationAfterAddingPoints.png" width="320" />

<img src="https://github.com/anama118118/BezierCurve/blob/master/Media/InterpolationVSApproximation.png" width="320" />

## Geometric Construction Of by De Casteljau

<img src="https://upload.wikimedia.org/wikipedia/commons/d/db/B%C3%A9zier_3_big.gif" width="320" />

The t in the formula is between 0 to 1

The t in the formula gives us the corresponding ratios and hence the points on the Bezier Curve.

## Possible Application
A. Create custom images on UIViews

B. Implement in Animations 

    1. For animating a path with Sprite Kit, regular animations
    
    2. For expanding and shrinking
    
    3. For outlining the shape of the polygon
    
# Core animations

## Layer:
 - provide the Basis for Drawing and Animations
 - objects are 2D surfaces organized in a 3D space
 - manage information about geometry, content, and visual attributes of their surfaces
 - do not define their own appearance
 - merely manges the state information surrounding a bitmap
 - layer usually captures the content your app provides and caches it in a bitmap, which is sometimes referred to as the backing store. 

## Advantage: 
Manipulating the bit map in hardware yeilds much faster aimations than could be done in software.

<img src="https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreAnimation_guide/Art/basics_layer_rendering_2x.png" width="640" />

Traditional view-based drawing techniques uses CPU on the main thread
Core Animation avoid this expense by manipulating the cased bitmap in hardware to achieve the same or similar effects

## 3 Ways to provide the content for that bitmap
- Assign an image object directly to the layer object's contents property
- Assign a delegate object to the layer and let the delegate draw the layer's content
- Define a layer subclass and override one of its drawing methods to provide the layer contents yourself.

## Layer-Based Animations
Examples of animations you can perform on layers

<img src="https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreAnimation_guide/Art/basics_animation_types_2x.png" width="640" />

During the course of an animation, Core Animation does all of the frame-by-frame drawing for you in hardware. All you have to do is specify the start and end points of the animation and let Core Animation do the rest. You can also specify custom timing information and animation parameters as needed; however, Core Animation provides suitable default values if you do not

## Anchor Points Affect Geometric Manipulations

<img src="https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreAnimation_guide/Art/layer_coords_anchorpoint_position_2x.png" width="640" />

## Hierarcies
1. view hierarchy
2. layer tree
3. presentation tree
4. render tree

## Layer Trees Reflect Different Aspects of the Animation State

<a href="https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreAnimation_guide/CoreAnimationBasics/CoreAnimationBasics.html">Apple Documentation Core Animation Basics</a> (Source 3)

## Different Layers

<a href="https://www.raywenderlich.com/90488/calayer-in-ios-with-swift-10-examples">Different layers</a> (Source 4) 

## Resources

(Source 1) https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-837-computer-graphics-fall-2012/lecture-notes/MIT6_837F12_Lec01.pdf

(Source 2) http://web.iitd.ac.in/~hegde/cad/lecture/L13_Beziercurve.pdf

(Source 3) https://developer.apple.com/library/content/documentation/Cocoa/Conceptual/CoreAnimation_guide/CoreAnimationBasics/CoreAnimationBasics.html

(Source 4) https://www.raywenderlich.com/90488/calayer-in-ios-with-swift-10-examples
