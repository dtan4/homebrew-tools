# homebrew-tools

| Platform | Status |
|----------|--------|
| macOS | [![GitHub Actions](https://github.com/dtan4/homebrew-tools/workflows/Test%20on%20macOS/badge.svg)](https://github.com/dtan4/homebrew-tools/actions?query=workflow%3A%22Test+on+macOS%22+branch%3A%22master%22) |

Homebrew recipes of [@dtan4](https://github.com/dtan4) tools

## Installation

```bash
$ brew tap dtan4/tools
```

## Available tools

| Name | Description |
|------|-------------|
| [ec2c](https://github.com/dtan4/ec2c) | Simple AWS EC2 CLI |
| [ghrls](https://github.com/dtan4/ghrls) | List & Describe GitHub Releases |
| [k8sec](https://github.com/dtan4/k8sec) | CLI tool to manage Kubernetes Secrets easily |
| [k8stail](https://github.com/dtan4/k8stail) | `tail -f` experience for Kubernetes Pods |
| [s3url](https://github.com/dtan4/s3url) | Generate S3 object pre-signed URL in one command |

## How to add new tool

0. Check SHA256 checksum of target file

   ```bash
   $ shasum -a 256 APP.tar.gz

   # Download archive and check at once
   $ script/check-sha256sum https://github.com/dtan4/APP/releases/downloads/v0.1.2/APP.tar.gz
   ```

0. Create `Formula/APP.rb`
0. Test it

    ```bash
   $ brew install --verbose --debug Formula/APP.rb
   $ brew test Formula/APP.rb
   ```

For further information, see [https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md](https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md).

## License

[![MIT License](http://img.shields.io/badge/license-MIT-blue.svg?style=flat)](LICENSE)
