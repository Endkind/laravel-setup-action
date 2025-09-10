# Laravel Setup Action (php.new)

Install **PHP on Linux and Windows GitHub Actions runners** via **php.new**, verify the installation, and run `composer install` (only if a `composer.json` is present in the repository root).

> **Status:** Linux and Windows supported. macOS unsupported.

---

## Inputs

| Name          | Type   | Default | Description                        |
| ------------- | ------ | ------- | ---------------------------------- |
| `php-version` | string | `"8.4"` | PHP version for php.new (default). |

---

## Usage

```yaml
jobs:
  setup:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4

      - name: Install PHP via php.new and install Composer deps
        uses: endkind/laravel-setup-action@v1
        with:
          php-version: "8.4"
```

WI### Pin a specific PHP version

```yaml
- uses: endkind/laravel-setup-action@v1
  with:
    php-version: "8.3"
```
