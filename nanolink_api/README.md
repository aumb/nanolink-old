# nanolink_api

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]
[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

The Nanolink API built with dart_frog

## How to use

- Create a .env file in the root of `nanolink_api` and add  `DB_URL` and `DB_KEY` strings to it.
- Create a [supabase] project.
- Copy the database url and key from [supabase] and paste the values in their respective places in the .env file.
- Create a table called `links` in [supabase]

and that's it!


[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[supabase]: https://app.supabase.com/
