# Operator for OpenVINO model server

Created using the [Operator SDK](https://sdk.operatorframework.io/docs/building-operators/helm) and the OpenVINO model server [Helm charts](https://github.com/openvinotoolkit/model_server/tree/main/deploy) as a starting point.

# Building OpenVINO operator

To build and push the operator to a registry:

```
export IMG=quay.io/example/openvino-operator:v0.0.1
make docker-build docker-push IMG=$IMG
```

# Deploying OpenVINO operator

Make can also be used to deploy the operator into your OpenShift environment

```
make deploy IMG=$IMG
```

# Using OpenVINO operator

The OpenVINO operator adds a new `Ovms` custom resource definition. When a
`Ovms` custom resource is provided the operator constructs a service, a
deployment consisting of some number of model servering pods, where the
model being served is pulled from an object store (ie. Ceph, Amazon S3,
Google Cloud Storage).
