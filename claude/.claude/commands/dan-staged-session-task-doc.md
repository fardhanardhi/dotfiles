---
description: Buat file MD ringkasan perubahan session (Actual/Expected/Implemented) untuk administrasi task
---

Buat satu file markdown di root project yang menjelaskan perubahan/changes pada session ini.

## Format & Aturan

- Gunakan **3 heading H1**, persis: `# Actual`, `# Expected`, `# Implemented`. Jangan diterjemahkan, jangan ditambah judul lain di atasnya.
  - **Actual** — kondisi/masalah saat ini (sebelum perubahan).
  - **Expected** — hasil yang diharapkan (perilaku target).
  - **Implemented** — apa yang sudah dikerjakan untuk mencapainya.
- **Bahasa Indonesia**, boleh dicampur term bahasa Inggris untuk istilah teknikal supaya tidak kaku.
- Tone **profesional tapi santai**.
- **Jangan banyak horizontal line** (`---`). Heading H1 sudah cukup jadi pemisah.
- **Tidak terlalu teknis** — dokumen ini untuk **administrasi task**, jadi sisakan sudut pandang **business logic / dampak fungsional** saja.
- **Jangan mention path atau nama file** project (mis. `src/...`, nama file `.js`/`.tsx`). Sebut fitur/halaman dengan nama yang dikenal user, bukan referensi kode.

## Konten

Simpulkan perubahan dari session berjalan. Kalau perlu konteks tambahan untuk tahu apa yang berubah, cek `git status` dan `git diff` lebih dulu. Boleh pakai tabel kalau membantu (mis. contoh input/output yang dirasakan user), tapi tetap dari sisi business.

Argumen opsional `$ARGUMENTS` bisa dipakai untuk menentukan nama file output atau fokus topik. Kalau kosong, pilih nama file yang deskriptif sendiri (mis. `CHANGES_<topik>.md`).
