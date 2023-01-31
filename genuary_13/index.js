// Set up the scene, camera and renderer
var scene = new THREE.Scene();
var camera = new THREE.PerspectiveCamera(
  75,
  window.innerWidth / window.innerHeight,
  0.1,
  1000
);
var renderer = new THREE.WebGLRenderer();
renderer.setSize(window.innerWidth, window.innerHeight);
document.body.appendChild(renderer.domElement);

// Create a cube and add it to the scene

let cubes = [];
for (let i = 0; i < 10; i++) {
  let r = Math.random();
  var geometry = new THREE.BoxGeometry(r, r, r);
  var material = new THREE.MeshBasicMaterial({ color: 0x00ff00 });
  var cube = new THREE.Mesh(geometry, material);

  let x = 4 * (Math.random() - 0.5);
  let y = 4 * (Math.random() - 0.5);
  let z = 4 * (Math.random() - 0.5);
  cube.position.x = x; // = new THREE.Vector3(x, y, z);
  cube.position.y = y; // = new THREE.Vector3(x, y, z);
  cube.position.z = z;
  cube.rot = Math.random() / 10;
  scene.add(cube);
  cubes.push(cube);
}

// Set the camera position
camera.position.z = 5;

// Render the scene
function render() {
  requestAnimationFrame(render);
  for (let cube of cubes) {
    cube.rotation.x += cube.rot;
    cube.rotation.y += cube.rot;
    cube.rotation.z += cube.rot;
  }

  renderer.render(scene, camera);
}
render();
