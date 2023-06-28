# start the fleet-telemetry server
# hadolint ignore=DL3006
FROM gcr.io/distroless/base-debian11
WORKDIR /

COPY --from=fleet-telemetry-integration-tests /go/bin/fleet-telemetry /

CMD ["/fleet-telemetry", "-config", "/etc/fleet-telemetry/config.json"]
