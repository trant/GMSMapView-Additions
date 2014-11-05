In order to use this extension you just have to get the UIButton from the GMSMapView and then:

```
- (void)setupMyLocationButton {
UIButton *myLocationButton = [self.mapView myLocationButton];

if (myLocationButton) {
[myLocationButton setImage:[UIImage imageNamed:@"map_options_button_mylocation_default"] forState:UIControlStateNormal];
[myLocationButton setImage:[UIImage imageNamed:@"map_options_button_mylocation_pressed"] forState:UIControlStateHighlighted];
[myLocationButton setImage:[UIImage imageNamed:@"map_options_button_mylocation_pressed"] forState:UIControlStateSelected];
}
}
```
