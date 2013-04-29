//
//  viewMapViewController.h
//  Trekking
//
//  Created by Krithiga on 29/04/13.
//  Copyright (c) 2013 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>


@interface viewMapViewController : UIViewController<MKMapViewDelegate>{
    
    MKMapView  *viewmap;
}

@end
