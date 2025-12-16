#!/usr/bin/env python
"""The run script."""
import logging
import sys
import typing as t
from time import sleep

from flywheel_gear_toolkit import GearToolkitContext

from fw_gear_functions.main import run
# from fw_gear_functions.parser import parse_config
# from fw_gear_functions.util import create_metadata

log = logging.getLogger(__name__)


def main(context: GearToolkitContext) -> None:  # pragma: no cover
    """Parse config and run."""
    # file_path, file_type, config = parse_config(context) # if have user-specified inputs and/or configs

    # get container hierarchy & initialize list of session IDs to process
    # destination_id  = context.destination["id"]
    # destination     = context.client.get(destination_id)
    # can use destination.container_type to customize behavior based on container type

    status = run(context, context.client)

    return status

if __name__ == "__main__":
    with GearToolkitContext(fail_on_validation=False) as context:
        try:
            context.init_logging()
            status = main(context)
        except Exception as exc:
            log.exception(exc)
            status = 1

    sys.exit(status)
