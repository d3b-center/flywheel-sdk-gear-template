# general ocumentation:
#   https://flywheel-io.gitlab.io/tools/app/cli/0.28/fw-beta/
#   https://docs.flywheel.io/user/compute/gears/#finding-more-gears
#   https://flywheel-io.gitlab.io/public/flywheel-tutorials/Flywheel-SDK-Example.html

## Create a configuration file for the gear, add inputs as needed
# fw-beta gear config --new
# fw-beta gear config -i api_key=$FW_API_KEY
# fw-beta gear config --input input=test_im/T1_to_SRI.nii.gz

## Create working directories
# mkdir input output work

## Run the gear locally
##      Run with fw-beta
fw-beta gear run
##      Or run with docker for interactive debugging
# docker run -it --rm --entrypoint='' chop.flywheel.io/your-gear-name:0.0.0 bash
