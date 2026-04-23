/**
 * Build site logos from source PNG.
 * Input  : src/assets/ecc46e84-c20c-4b45-aeab-1485859cebc6.png (2172x724)
 * Output : src/assets/logo.webp       — full logo, desktop (480x160 @ 2x)
 *          src/assets/logo-icon.webp  — round icon only, mobile (160x160 @ 2x)
 */
const path = require('path');
const sharp = require('sharp');

const SRC = path.join(__dirname, '..', 'src', 'assets', 'ecc46e84-c20c-4b45-aeab-1485859cebc6.png');
const OUT_FULL = path.join(__dirname, '..', 'src', 'assets', 'logo.webp');
const OUT_ICON = path.join(__dirname, '..', 'src', 'assets', 'logo-icon.webp');

(async () => {
  const meta = await sharp(SRC).metadata();
  console.log(`Source: ${meta.width}x${meta.height}`);

  // --- Full logo: trim whitespace, resize to 480x160 (3:1 @ 2x) ---
  await sharp(SRC)
    .trim({ threshold: 10 })
    .resize({ width: 480, fit: 'inside', withoutEnlargement: false })
    .webp({ quality: 92, effort: 6 })
    .toFile(OUT_FULL);
  const fullMeta = await sharp(OUT_FULL).metadata();
  console.log(`Full  : ${OUT_FULL} -> ${fullMeta.width}x${fullMeta.height}`);

  // --- Icon only: crop left ~33% (icon area) to buffer, then trim + resize ---
  const iconCropWidth = Math.round(meta.width * 0.28);
  const iconBuffer = await sharp(SRC)
    .extract({ left: 0, top: 0, width: iconCropWidth, height: meta.height })
    .toBuffer();

  await sharp(iconBuffer)
    .trim({ threshold: 10 })
    .resize({ width: 160, height: 160, fit: 'contain', background: { r: 255, g: 255, b: 255, alpha: 0 } })
    .webp({ quality: 92, effort: 6 })
    .toFile(OUT_ICON);
  const iconMeta = await sharp(OUT_ICON).metadata();
  console.log(`Icon  : ${OUT_ICON} -> ${iconMeta.width}x${iconMeta.height}`);
})().catch((err) => {
  console.error(err);
  process.exit(1);
});
