# MSSQL on Linux ARM64 with `sqlcmd` and `bcp`

This repo was updated from its fork to include `sqlcmd` and `bcp` cli tools
(2025-03-13). The MS repo sources in the Dockerfile currently have arm
binaries of the tools. The docker image was tested on Ubuntu 22.04

The Dockerfile extends the [`mcr.microsoft.com/azure-sql-edge`](https://hub.docker.com/_/microsoft-azure-sql-edge)

## Usage

`docker compose up`
