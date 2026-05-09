---
title: "Just Flight Fokker F70/F100 Professional untuk MSFS"
description: "Just Flight memasuki tahap uji akhir Fokker F70/F100 Professional untuk MSFS 2020 dan 2024. Berikut yang bisa diharapkan pilot virtual nanti."
lang: "id"
pubDate: "2026-05-09"
heroImage: "../../assets/hero-justflight-fokker-f70-f100-msfs.webp"
---

Setelah lebih dari dua tahun dikembangkan secara internal, **Just Flight** sedang memberi sentuhan akhir pada **Fokker F70/F100 Professional Bundle** untuk Microsoft Flight Simulator 2020 dan 2024. Update pengembangan Mei 2026 memastikan logika mode Profile pada AFCAS sudah ditulis ulang, model pengereman disempurnakan, dan tim sudah masuk ke tahap akhir perbaikan bug sebelum rilis.

![Tampak luar Fokker F100 Professional di Microsoft Flight Simulator](../../assets/hero-justflight-fokker-f70-f100-msfs.webp)

## Akhirnya, Fokker yang sepadan dengan simulator modern

Fokker F100 adalah pesawat regional yang nyaris tak terlihat namun ada di mana-mana sejak akhir 1980-an: ia telah membawa jutaan penumpang di Eropa, Asia, dan Australia, lalu pada 1995 disusul oleh saudara yang lebih pendek, F70. KLM Cityhopper, Austrian Airlines, Air France Régional, American Airlines, QantasLink, dan Alliance Airlines pernah mengoperasikan armada yang cukup besar, dan keluarga ini masih terbang sampai sekarang di operator seperti Alliance Airlines dan Carpatair. Meski jejak nyatanya sebesar itu, keluarga Fokker belum pernah punya versi fidelitas tinggi di MSFS — bundle Just Flight adalah proyek serius pertama yang berniat menutup celah tersebut.

Paket ini mencakup **lima sub-varian**: satu F70 dengan tangga integral dan pintu kargo besar, plus empat konfigurasi F100 yang memadukan tangga integral atau pintu geser, pintu kargo kecil atau besar, dan opsi pintu L2. Kedua tipe memakai turbofan Rolls-Royce Tay — **Tay 620-15** pada F70 dan **Tay 650** pada F100 yang lebih berat. Just Flight merekam mesinnya dari pesawat asli di Belanda, lalu mengintegrasikannya ke dalam paket suara berbasis Wwise yang menurut pengembang berisi lebih dari 500 sample individual.

## Sistem ditulis sendiri, bukan bawaan MSFS

Yang membedakan proyek ini dari payware MSFS biasa adalah jumlah kode kustom yang ditulis dari nol. **Flight Management System** adalah implementasi kustom dengan dua CDU, LNAV/VNAV nyata, alignment IRS dengan durasi yang masuk akal, impor flight plan, dan hierarki halaman Fokker yang asli (DIR, MODE, TACT MODE, INIT, REF, F-PLN, TO/APPR, PROG). Di atasnya bekerja **Automated Flight Control and Augmentation System (AFCAS)** yang juga dikoding sendiri, mengendalikan mode lateral dan vertikal, termasuk descent Profile yang mengikuti pembatasan ketinggian dan kecepatan, plus autoland yang sudah diatur dengan teliti.

Di bawah avionik, simulasi turun sampai ke jeroan rangka. Setiap sistem hidrolik dimodelkan independen dengan pompa elektrik; bus listrik memisahkan sumber engine, APU, eksternal, dan darurat dengan manajemen TRU; pressurization, permintaan bleed air, anti-icing, dan logika transfer bahan bakar bekerja seperti pesawat aslinya. **Speedbrake ekor dan lift dumper** yang ikonik, gust lock, kontrol stabilizer dan flap alternatif, serta kinematika roda pendarat yang bergantung pada tekanan, semuanya direproduksi satu per satu — bukan disembunyikan di balik animasi MSFS standar.

![Cockpit Fokker F100 dengan layar CRT melengkung dan dual CDU](https://img.justflight.com/products/Fokker_70___100/F70-100/010526/F100_COCKPIT_010526_1_s0BFOYFCr.png)
*Kredit: [Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle)*

## Apa yang berubah bagi pilot virtual

Bagi yang sudah terbiasa menerbangkan FlyByWire A320, iniBuilds A310, atau PMDG 737, F70/F100 akan terasa seperti kembali ke generasi cockpit yang lebih lama — instrumen analog standby, layar CRT melengkung, switchgear klasik — tetapi dengan kedalaman sistem yang membuat add-on modern itu populer. Posisi kapten, first officer, dan observer semuanya dimodelkan dengan saklar dan circuit breaker beranimasi; Just Flight juga menambahkan clickspot tersembunyi (TOGA, setelan altimeter STD) supaya kenyamanan operasi tetap terjaga saat terbang.

Mesin Tay punya karakter sendiri. Responsif di ketinggian rendah, tapi naik perlahan ketika F100 berat: blog pengembangan menyebut sekitar tiga puluh menit dan 156 mil laut untuk mencapai FL350 pada MTOW di kondisi ISA. Justru pembatasan seperti itulah yang mengubah penerbangan pendek di Eropa — Amsterdam-Munich, London-Faro, Wina-Bukares — menjadi penerbangan prosedural penuh, bukan latihan yang dipercepat. Dengan jangkauan maksimum sekitar 1 500 mil laut, bundle ini memang ditujukan untuk jaringan regional tempat Fokker dulu bersinar.

## Kabin, EFB, dan detail kecil

Kabin penumpang lengkap bisa dimasuki dan interaktif. Pencahayaan, pintu, interphone, dan galley bisa dioperasikan; pengumuman kabin, digital music player, dan logika Auto Cabin Crew sudah disertakan; LOD diatur supaya berjalan-jalan di pesawat tidak menjatuhkan FPS. Setiap livery datang dengan tekstur kabin sendiri, dan **30 livery yang disertakan** — 11 untuk F70 dan 19 untuk F100, mulai dari KLM Cityhopper dan Austrian Airlines hingga American Airlines, TAM, atau Slovak Government Flight Service — mencakup hampir semua corak yang akan ingin diterbangkan oleh pilot virtual.

![Interior kabin penumpang Fokker F100 di MSFS](https://img.justflight.com/products/Fokker_70___100/F70-100/010526/F100_CABIN_010526_1_L2gHiqeFA.png)
*Kredit: [Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle)*

EFB-nya menangani sisi operasional: state cold-and-dark atau turnaround, manajer bahan bakar dan payload dengan kontrol per-tank, boarding dan refueling dengan kecepatan realistis, GPU dan chocks, kalkulator performa take-off dan landing, **impor OFP SimBrief**, METAR, pelacakan peta real-time, dan **dukungan chart Navigraph** lewat langganan terpisah. Kompatibilitas dengan GSX, mode walkaround MSFS 2024, dan sistem checklist interaktif bawaan — hampir 300 item, lebih dari 250 sebelum take-off — menyempurnakan paket.

## Cara memaksimalkan pesawat ini

Cara paling enak untuk mulai mengenal pesawat adalah dengan **rute pendek di Eropa** — KLM Cityhopper Amsterdam-London City, atau Austrian Wina-Frankfurt — dengan berat sedang, supaya pesawat punya margin naik ke FL yang masuk akal. Setelah halaman FMS, mode AFCAS, dan logika speedbrake serta lift dumper terasa familiar, etape lebih panjang di jaringan Australia bersama Alliance Airlines atau QantasLink akan benar-benar menguji mode Profile dan autoland. Just Flight memastikan kompatibilitas dengan checklist interaktif MSFS, jadi siapa pun yang lebih suka antarmuka bawaan simulator akan mendapat aliran kerja hampir 300 item lengkap tanpa add-on tambahan.

[Halaman in-development di Just Flight](https://www.justflight.com/in-development/f70-f100-professional-bundle) tetap jadi tempat terbaik untuk memantau update berikutnya — entry Mei 2026 menyebut uji terbang akhir dan perbaikan bug terakhir, yang biasanya menandai jendela rilis dalam hitungan minggu.

## Kesimpulan

Jika proyek ini benar-benar menepati apa yang dijanjikan blog pengembangan, Fokker F70/F100 Professional Bundle bisa menjadi twin-jet regional acuan di MSFS — pesawat yang menutup celah antara turboprop dengan simulasi A320 dan 737 yang lebih besar. Kami akan menerbitkan ulasan lengkap di Virtual Flight begitu versi rilisnya kami tangani sendiri. Sementara itu, [halaman berita Just Flight](https://www.justflight.com/) adalah tempat untuk memantau pengumuman peluncuran resmi.
