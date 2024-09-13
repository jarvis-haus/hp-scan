<div align="center">
	<br>
	<div>
		<img width="300" height="300" src="res/HP_Black_RGB_150_LG.png" alt="hp">
	</div>
	<br>
	<br>
  <h1>jarvishaus/hp-scan</h1>
  <p>
    <sup>
      HP scan utility for supported all-in-one/mfp devices
    </sup>
  </p>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
</div>

> `jarvishaus/hp-scan` is a container for transforming older HP AIO models into network enabled scanners.

[![License](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

## Goals of `jarvishaus/hp-scan`

- Simplify the usage of [hp-scan](https://developers.hp.com/hp-linux-imaging-and-printing/tech_docs/man_pages/scan)
- Be as lightweight as possible
- Don't be a standalone application
- Be used a sidecar alongside [Paperless-ngx](https://docs.paperless-ngx.com) for example

## Usage

Run this image with a volume mounted to the `/var/scan` and your device URI specified as an environment variable while using DBUS from host:

```sh
docker run --rm -it \
	-v /run/dbus/system_bus_socket:/run/dbus/system_bus_socket \
	-v ./consume:/var/scan \
	-e DEVICE_URI=escl:https://192.168.0.1:443
	jarvishaus/hp-scan
```

## Configuration

Options for scanning may be provided as environment variables:

 * `MODE` ... Scan mode: gray, color or lineart
 * `RESOLUTION` ... Scanning resolution in dpi

<br>
<br>

<img src="res/HP_Black_RGB_150_LG.png" width="20"/>

###### HP® and the HP logo are registered trademarks of Hewlett-Packard Development Company, L.P. This project is not affiliated with HP. It makes use of HPLIP which can be downloaded from the [HP Developer page.](https://developers.hp.com/hp-linux-imaging-and-printing/about)
