import React, { useEffect, useRef } from "react";
import MarkerManager from "../../util/marker_manager.js";

const BenchMap = ({ benches }) => {
  const mapNodeRef = useRef();
  const mapRef = useRef();
  const markerManagerRef = useRef();

  useEffect(() => {
    const mapOptions = {
      center: { lat: 37.7758, lng: -122.435 },
      zoom: 13,
    };

    mapRef.current = new google.maps.Map(mapNodeRef.current, mapOptions);
    markerManagerRef.current = new MarkerManager(mapRef.current);
    // reassigning the ref's current property to an instance of the MarkerManager class
  }, []); // only run on mount if it's []

  useEffect(() => {
    console.log(benches);
    if (!window.allBenches) {
      window.allBenches = [benches];
    } else {
      window.allBenches.push(benches);
    }
    // run anytime benches change and on mount
    markerManagerRef.current.updateMarkers();
  }, [benches]); // referential equality check

  return <div className="map-container" ref={mapNodeRef} />;
};

export default BenchMap;
