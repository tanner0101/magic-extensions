import MapKit

extension MKMapView {
    
    ///Zoom into and center the MKAnnotations on an MKMapView with one line. With our without animation.
    func zoomToAnnotations(animated: Bool) {
        var zoomRect = MKMapRectNull
        for annotation in self.annotations {
            let annotationPoint = MKMapPointForCoordinate(annotation.coordinate)
            let pointRect = MKMapRectMake(annotationPoint.x, annotationPoint.y, 0.1, 0.1)
            if MKMapRectIsNull(zoomRect) {
                zoomRect = pointRect
            } else {
                zoomRect = MKMapRectUnion(zoomRect, pointRect)
            }
        }
        
        let padding = 0.1
        
        let addHeight = zoomRect.size.height * (1 + padding)
        let addWidth = zoomRect.size.width * (1 + padding)
        
        zoomRect.size.height += addHeight
        zoomRect.size.width += addWidth
        
        zoomRect.origin.x -= addWidth / 2
        zoomRect.origin.y -= addHeight / 2
        
        self.setVisibleMapRect(zoomRect, animated: animated)
    }
    
}
