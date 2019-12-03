import mapboxgl from 'mapbox-gl';
import GeoJSON from 'geojson';
import bbox from '@turf/bbox';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    markers.forEach((marker) => {
      const marker1 = new mapboxgl.Marker({color: "#D16770"}) // MAIN COLOR
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(map);
      marker1.getElement().addEventListener('click', function () {
                              clickMarker(marker.id);
                          }, false);
    });
    function clickMarker(id) {
      document.querySelectorAll('.card-house').forEach((el) => { el.classList.remove('active-house')});
      document.getElementById(`house-${id}`).classList.add('active-house');
    }
    const geoMarkers = GeoJSON.parse(markers, {Point: ['lat', 'lng']});
    const bounds = bbox(geoMarkers);
    map.fitBounds(bounds, {padding: 50});
  }
};

export { initMapbox };
