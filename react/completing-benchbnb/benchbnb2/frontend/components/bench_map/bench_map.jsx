import React, { useEffect, useRef } from "react";
import MarkerManager from "../utils/marker_manager.js";

const BenchMap = () => {
  const mapNodeRef = useRef();
  const mapRef = useRef();
  const MarkerManager = MarkerManager(mapRef.current);

  useEffect(() => {
    const mapOptions = {
      center: { lat: 37.7758, lng: -122.435 },
      zoom: 13,
    };

    mapRef.current = new google.maps.Map(mapNodeRef.current, mapOptions);
  }, []);

  return <div className="map-container" ref={mapNodeRef} />;
};

export default BenchMap;
