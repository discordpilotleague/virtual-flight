const sharp = require('sharp');
const fs = require('fs');
const path = require('path');

const srcDir = 'src/assets/img-update';
const slug = 'pilotleague-spring-2026-update';

async function main() {
  for (const f of fs.readdirSync(srcDir)) {
    const meta = await sharp(path.join(srcDir, f)).metadata();
    console.log(`IN  ${f}: ${meta.width}x${meta.height}`);
  }

  const heroOut = `src/assets/hero-${slug}.webp`;
  const heroInfo = await sharp(path.join(srcDir, 'leaderboard.png'))
    .resize({ width: 1600, kernel: sharp.kernel.lanczos3 })
    .webp({ quality: 88 })
    .toFile(heroOut);
  console.log(`HERO ${heroOut}: ${heroInfo.width}x${heroInfo.height} (${Math.round(heroInfo.size / 1024)}kB)`);

  const bodyDir = `public/images/${slug}`;
  fs.mkdirSync(bodyDir, { recursive: true });
  const bodyFiles = [
    { src: 'profil.png',     out: 'public-pilot-profile.webp' },
    { src: 'gps.png',        out: 'gps-track-phases.webp' },
    { src: 'hors-piste.png', out: 'off-runway-alert.webp' },
  ];
  for (const { src, out } of bodyFiles) {
    const info = await sharp(path.join(srcDir, src))
      .resize({ width: 1400, withoutEnlargement: true })
      .webp({ quality: 82 })
      .toFile(path.join(bodyDir, out));
    console.log(`BODY ${out}: ${info.width}x${info.height} (${Math.round(info.size / 1024)}kB)`);
  }
}

main().catch(e => { console.error(e); process.exit(1); });
