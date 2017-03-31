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
    

## Resources

(Source 1) https://ocw.mit.edu/courses/electrical-engineering-and-computer-science/6-837-computer-graphics-fall-2012/lecture-notes/MIT6_837F12_Lec01.pdf

(Source 2) http://web.iitd.ac.in/~hegde/cad/lecture/L13_Beziercurve.pdf
