Curtis Teitleman, Teodoro Meyerhof


Yetzitt App Design
Objective: 
        A nightlife app for the party/edm crew and anyone looking to experience Boston nightlife. Create an app that uses maps API’s to get user location info and shows specific nightlife venues based on the user’s search parameters. I.e. User is at said location, app only shows pins in map that represent venues within the chosen radius. App offers synopsis and reviews of each nightlife venue including description of environment and of the venue itself. May have some algorithms to narrow the search parameters and tailor the venue pins shown to some select preferences for the user. The app separates venues into clubs/bars and denotes how “lit” each venue is. 


Functionality of program:
* Program uses google maps API to post pins at different nightlife spots in Boston: https://developers.google.com/maps/documentation/ios-sdk/marker
* App also has info menu capability attached to each marker: 
Swift Code:


let position = CLLocationCoordinate2D(latitude: 51.5, longitude: -0.127)
let london = GMSMarker(position: position)
london.title = "London"
london.map = mapView
        
* Use the “night style” in IOS DSK file as well: 
//GMSMapStyle(...)
// Creates GMSMapStyle instance - Like C++ constructor
//   Modify snipits of code from: https://github.com/googlemaps/maps-sdk-for-ios-samples
//  
// 
// [
  {
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#242f3e"
          }
        ]
  },


  {
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#746855"
          }
        ]
  },


  {
        "elementType": "labels.text.stroke",
        "stylers": [
          {
            "color": "#242f3e"
          }
        ]
  },


  {
        "featureType": "administrative.locality",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#d59563"
          }
        ]
  },


  {
        "featureType": "poi",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#d59563"
          }
        ]
  },


  {
        "featureType": "poi.park",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#263c3f"
          }
        ]
  },


  {
        "featureType": "poi.park",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#6b9a76"
          }
        ]
  },


  {
        "featureType": "road",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#38414e"
          }
        ]
  },


  {
        "featureType": "road",
        "elementType": "geometry.stroke",
        "stylers": [
          {
            "color": "#212a37"
          }
        ]
  },


  {
        "featureType": "road",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#9ca5b3"
          }
        ]
  },


  {
        "featureType": "road.highway",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#746855"
          }
        ]
  },


  {
        "featureType": "road.highway",
        "elementType": "geometry.stroke",
        "stylers": [
          {
            "color": "#1f2835"
          }
        ]
  },


  {
        "featureType": "road.highway",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#f3d19c"
          }
        ]
  },


  {
        "featureType": "transit",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#2f3948"
          }
        ]
  },


  {
        "featureType": "transit.station",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#d59563"
          }
        ]
  },


  {
        "featureType": "water",
        "elementType": "geometry",
        "stylers": [
          {
            "color": "#17263c"
          }
        ]
  },


  {
        "featureType": "water",
        "elementType": "labels.text.fill",
        "stylers": [
          {
            "color": "#515c6d"
          }
        ]
  },


  {
        "featureType": "water",
        "elementType": "labels.text.stroke",
        "stylers": [
          {
            "color": "#17263c"
          }
        ]
  }
]
//https://developers.google.com/maps/documentation/ios-sdk/styling




Variables:
* Object for each user: struct user{
                                                Int lat;
                                                Int long;
                                                String preference;      //pseudocode of user object
                                        };
* Object for venue: struct venue{
                                                Int lat;
                                                Int long;
                                                String: description;
                                                String title;
                                        };
        *use constructors??
                                        //use the Maps API markers coad to coordinate with venue
                                        //modify code to rename “markers” object to “venue” object
                                        //
* Object for comment: 


struct comment{
        String comment;
        String title
        };
                        //use the pointer “place” to associate the comment with “venue” object
                        //
* My location capability:
                //                
//        {
//                mapView.isMyLocationEnabled = true
//        }
//          enable location to check user location 
//        against venue locations
* List of venues: whiskey saigon, cure, middle east, zuzu, phoenix landing, coogan’s, sissy k’s, hong kong, black rose, 


Algorithms and data structure organization:
* Use a sorting algorithm on data set to limit the data to the user’s parameters
* Create arrays/tree/linked list of “venue” variable
* Array could be potentially an array of pointers to each variable??, use search algorithm to display information in window of each pin
* Syntax of info window:
        //
        //        Whiskey Saigon:
        //        Get lit this weekend at one of boston’s most highly rated clubs
        //        Dj Costa gets the party started at one of Boston’s most prolific nightlife //destinations. If you have the cash and are looking for a good time, Whiskey saigoin has the //music, the crowd and the atmosphere for a high end night to the club
        //        cover: $30 (events vary)
        //      (link to website)
        //      (pics of venue)/selling points
* Create function that effectively compares the lat/long position to that of user, compute and convert distance to miles and then check against the user’s search radius
//          access info in “user” variable for location. 
//     (venue.lat-user.lat)%69=
//
Graphics:
* To add circle: 
//        
//        {
//                let circleCenter = CLLocationCoordinate2D(latitude: //37.35,longitude: -122.0)
//        let circ = GMSCircle(position: circleCenter, radius: 1000)
//        circ.map = mapView
//        }
//       use location variable for user to position circle based on the user’s desired search //radius.




Research:


https://developers.google.com/maps/


        This next link is code to export specific google maps style, I chose the “night style”:
https://mapstyle.withgoogle.com/


        This is the link to page detailing how to code markers on the map in accordance to the google maps API. Should have everything we need to place markers, color and style them as well as make an info window.
https://developers.google.com/maps/documentation/ios-sdk/marker


        *The software in this bundle already handles the interactions between the google maps API and the servers at google maps, it would only require embedding and styling.


I signed up for the API software through the same page and have received a “key” for us to use the API in our IOS app. The key is specific to mobile computing and is specifically made for in app use. 
The key:
AIzaSyAF9YUaxiLTuL4W3Ym-N47Kf8HGn8_QXcs


The master page on building the app with API interface:
https://developers.google.com/maps/documentation/ios-sdk/map-with-marker
