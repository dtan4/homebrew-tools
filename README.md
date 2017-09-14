# homebrew-tools

[![Build Status](https://travis-ci.org/dtan4/homebrew-tools.svg?branch=master)](https://travis-ci.org/dtan4/homebrew-tools)

Homebrew recipes of [@dtan4](https://github.com/dtan4) tools

## Installation

```bash
$ brew tap dtan4/tools
```

## Available tools

| Name | Description | Version |
|------|-------------|---------|
| [ec2c](https://github.com/dtan4/ec2c) | Simple AWS EC2 CLI | [v0.1.1](https://github.com/dtan4/ec2c/releases/tag/v0.1.1) |
| [ghrls](https://github.com/dtan4/ghrls) | List & Describe GitHub Reelases | [v0.1.0](https://github.com/dtan4/ghrls/releases/tag/v0.1.0) |
| [k8sec](https://github.com/dtan4/k8sec) | CLI tool to manage Kubernetes Secrets easily | [v0.5.0](https://github.com/dtan4/k8sec/releases/tag/v0.5.0) |
| [k8stail](https://github.com/dtan4/k8stail) | `tail -f` experience for Kubernetes Pods | [v0.5.1](https://github.com/dtan4/k8stail/releases/tag/v0.5.1) |
| [s3url](https://github.com/dtan4/s3url) | Generate S3 object pre-signed URL in one command | [v0.3.1](https://github.com/dtan4/s3url/releases/tag/v0.3.1) |
| [valec](https://github.com/dtan4/valec) | Handle application secrets securely | [v0.5.2](https://github.com/dtan4/valec/releases/tag/v0.5.2) |

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
