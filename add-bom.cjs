const fs = require('fs');
const f = process.argv[2];
const c = fs.readFileSync(f);
if (c[0] !== 0xEF || c[1] !== 0xBB || c[2] !== 0xBF) {
  fs.writeFileSync(f, Buffer.concat([Buffer.from([0xEF, 0xBB, 0xBF]), c]));
}
