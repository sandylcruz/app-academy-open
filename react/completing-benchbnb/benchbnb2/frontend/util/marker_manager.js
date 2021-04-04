class MarkerManager {
  constructor(map) {
    this.map = map;
    this.markers = {};

    this.updateMarkers = this.updateMarkers.bind(this);
  }

  updateMarkers(benches) {
    // Remove markers for benches no longer on screen
    const benchesObject = {};

    benches.forEach((bench) => {
      benchesObject[bench.id] = bench;
    });

    Object.keys(this.markers).forEach((key) => {
      const marker = this.markers[key];
      if (!benchesObject[marker.id]) {
        delete this.markers[marker.id];
      }
    });

    // Add markers for benches not in markers
    benches.forEach((bench) => {
      if (!this.markers.hasOwnProperty(bench.id)) {
        const newMarker = this.createMarkerFromBench(bench);
        this.markers[bench.id] = newMarker;
      }
    });
  }

  createMarkerFromBench(bench) {
    const myLatLng = new google.maps.LatLng(bench.lat, bench.lng);
    const marker = new google.maps.Marker({
      position: myLatLng,
      map: this.map,
      id: bench.id,
    });

    return marker;
  }
}

export default MarkerManager;
