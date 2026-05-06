const sharp = require('sharp');
const path = require('path');

const tmp = 'C:/Users/barat/AppData/Local/Temp';
const out = path.join(__dirname, '..', 'src', 'assets');

(async () => {
  await sharp(path.join(tmp, 'wu21-sydney.png'))
    .resize(1600, 900, { fit: 'cover', position: 'center' })
    .webp({ quality: 85 })
    .toFile(path.join(out, 'hero-msfs-2024-world-update-21-australia.webp'));
  console.log('hero ok');
})();
