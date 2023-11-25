import sys
#!pip install geopy
#USAGE: <script> <starting longitude> <starting lattiude> <end longitude> <end lattiude>

#https://en.wikipedia.org/wiki/Great-circle_distance
from geopy.distance import great_circle
def geoGreatCircleDistance(startLat, startLong, endLat, endLong):
    startLocation = (startLat, startLong)
    endLocation = (endLat, endLong)
    return great_circle(startLocation, endLocation).miles

#https://en.wikipedia.org/wiki/Geodesics_on_an_ellipsoid
from geopy.distance import geodesic
def geodesicDistance(startLat, startLong, endLat, endLong):
    startLocation = (startLat, startLong)
    endLocation = (endLat, endLong)
    return geodesic(startLocation, endLocation).miles

print (geodesicDistance(float(sys.argv[1]),float(sys.argv[2]),float(sys.argv[3]),float(sys.argv[4])))
#print(float(sys.argv[1]),float(sys.argv[2]),float(sys.argv[3]),float(sys.argv[4]))
