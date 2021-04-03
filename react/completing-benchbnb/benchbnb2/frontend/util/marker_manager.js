class MarkerManager {
  constructor(map) {
    this.map = map;
    this.markers = {};

    this.updateMarkers = this.updateMarkers.bind(this);
  }

  updateMarkers(benches) {
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
      benchId: bench.id,
    });

    return marker;
  }
}

export default MarkerManager;
