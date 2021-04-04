import React, { useEffect, useRef } from "react";

import MarkerManager from "../../util/marker_manager.js";

const BenchMap = ({ benches, updateBoundsAndFetchBenches }) => {
  const mapNodeRef = useRef();
  const mapRef = useRef();
  const markerManagerRef = useRef();

  useEffect(() => {
    const mapOptions = {
      center: { lat: 37.7758, lng: -122.435 },
      zoom: 13,
    };

    const map = new google.maps.Map(mapNodeRef.current, mapOptions);
    mapRef.current = map;
    markerManagerRef.current = new MarkerManager(mapRef.current);
    // reassigning the ref's current property to an instance of the MarkerManager class
  }, []); // only run on mount if it's []

  useEffect(() => {
    // run anytime benches change and on mount
    markerManagerRef.current.updateMarkers(benches);
  }, [benches]); // referential equality check

  useEffect(() => {
    const map = mapRef.current;
    map.addListener("idle", () => {
      const bounds = map.getBounds();
      const northEast = bounds.getNorthEast();
      const southWest = bounds.getSouthWest();
      const boundsObject = {
        northEast: {
          lat: northEast.lat(),
          lng: northEast.lng(),
        },
        southWest: {
          lat: southWest.lat(),
          lng: southWest.lng(),
        },
      };

      updateBoundsAndFetchBenches(boundsObject);
    });
  }, [updateBoundsAndFetchBenches]);

  return <div className="map-container" ref={mapNodeRef} />;
};

export default BenchMap;
