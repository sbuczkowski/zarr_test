using Pkg
Pkg.add("AWS")
Pkg.add("Zarr")
using AWS, Zarr

AWS.global_aws_config(AWSConfig(creds=nothing, region = "us-east-1"))
@time z = zopen("s3://era5-pds/zarr/2021/07/data/sea_surface_temperature.zarr/")

sst = z["sea_surface_temperature"]
lat = z["lat"]
lon = z["lon"]

