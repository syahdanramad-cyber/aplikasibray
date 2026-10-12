# Tangkuban Perahu — Aplikasi Android

Aplikasi satu halaman berbasis Flutter berisi pengenalan Gunung Tangkuban Perahu, fakta singkat, lokasi, legenda Sangkuriang, informasi kawah, dan pengingat keselamatan. Tombol lokasi membuka Google Maps.

## Cara mendapatkan APK lewat GitHub

1. Buat repository baru di GitHub, misalnya `tangkuban-perahu-app`.
2. Upload seluruh isi folder proyek ini ke repository (file `pubspec.yaml`, folder `lib`, dan folder `.github`).
3. Buka tab **Actions**. Workflow **Build Android APK** akan berjalan otomatis setelah push; atau pilih **Run workflow**.
4. Setelah selesai, buka hasil workflow dan unduh **Artifacts → tangkuban-perahu-apk**. Ekstrak ZIP artifact untuk mendapatkan `app-release.apk`.
5. Pindahkan APK ke Android dan instal. Jika diminta, izinkan instalasi dari sumber yang digunakan.

## Build di komputer sendiri

Pasang Flutter SDK dan Android SDK, lalu jalankan:

```bash
flutter pub get
flutter build apk --release
```

APK akan berada di `build/app/outputs/flutter-apk/app-release.apk`.

## Catatan

- Koordinat peta adalah perkiraan untuk kawasan Gunung Tangkuban Perahu; gunakan peta dan informasi resmi setempat sebelum perjalanan.
- Gunung ini aktif. Status aktivitas, akses kawah, dan aturan kunjungan dapat berubah. Ikuti arahan petugas dan informasi resmi.
