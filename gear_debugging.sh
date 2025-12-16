## Login to Flywheel
# fw-beta login

## Pull a previously executed job from the Flywheel instance for this gear
# fw-beta job pull [job-id such as 693ca03023c3db7cbcb70931]

## cd into the new directory

## Add inputs as needed to the existing config file
# fw-beta gear config -i api_key=$FW_API_KEY
# fw-beta gear config --input input=test_im/T1_to_SRI.nii.gz

## Run the gear locally
##      Run with fw-beta
# fw-beta gear run
##      Or run with docker for interactive debugging
docker run -it --rm --entrypoint='' chop.flywheel.io/your-gear-name:0.0.0 bash

## Once the docker container is running, you can use an IDE such as visual studio code to view the container, edit files, and run commands.
## NOTE: You will need copy files into the docker container for testing, such as:
# docker cp config.json <container_id>:/flywheel/v0/config.json
# To find <container_id>, open a new terminal and run: docker container ls
