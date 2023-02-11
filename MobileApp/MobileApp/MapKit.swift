import SwiftUI
import MapKit

struct MapKit: View {
    var body: some View {
        MapView()
            .edgesIgnoringSafeArea(.all).padding()
    }
}


struct MapView: UIViewRepresentable{
    func makeUIView(context: Context) -> MKMapView {
        let mapView = MKMapView()
        mapView.delegate = context.coordinator
        
        let annotation = MKPointAnnotation()
        annotation.title = "AITU"
        annotation.subtitle = "Our office"
        annotation.coordinate = CLLocationCoordinate2DMake(51.090873, 71.418338)
        mapView.addAnnotation(annotation)
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 7000, longitudinalMeters: 7000)
        mapView.setRegion(region, animated: true)
        
        
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        //
    }
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    class Coordinator: NSObject, MKMapViewDelegate{
        var parent: MapView
        
        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
            print(mapView.centerCoordinate)
        }
        
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView?{
            let view = MKPinAnnotationView(annotation: annotation, reuseIdentifier: nil)
            view.canShowCallout = true
            return view
        }
        
        init(_ parent: MapView){
            self.parent = parent
        }
    }
    
}

struct MapKit_Previews: PreviewProvider {
    static var previews: some View {
        MapKit()
    }
}
