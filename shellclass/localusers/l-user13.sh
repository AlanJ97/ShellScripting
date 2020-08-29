#!/bin/bash

#This script is about functions

log(){ #OR -> function log
    echo "You called log"
    echo
}
log

log_arguments(){
    local MESSAGE="${@}"
    echo "${MESSAGE}"
    
}
log_arguments 'HEllo'
log_arguments 'HOw are u?'
echo

log_arguments_if(){
    local MESSAGE="${@}"
    if [[ "${VERBOSE}" = 'true' ]]
    then 
        echo "${MESSAGE}"
    fi
}
log_arguments_if 'HEllo'
VERBOSE='true'
log_arguments_if 'HOw are u?'
echo

log_arguments_if_better(){
    local VERBOSE="${1}"
    shift
    local MESSAGE="${@}"
    if [[ "${VERBOSE}" = 'true' ]]
    then 
        echo "${MESSAGE}"
    fi
}
VERBOSITY='true'
log_arguments_if_better "${VERBOSITY}" 'HEllo'
log_arguments_if_better "${VERBOSITY}" 'HOw are u?'
echo 
#This function sends a message to a syslog  and to standard output if VERBOSE is true
log_logger(){
    local MESSAGE="${@}"
    if [[ "${VERBOSE}" = 'true' ]]
    then 
        echo "${MESSAGE}"
        echo
    fi
    logger -t luser13.sh "${MESSAGE}"
}


backup_file() {
  # This function creates a backup of a file.  Returns non-zero status on error.

  local FILE="${1}"

  # Make sure the file exists.
  if [[ -f "${FILE}" ]]
  then
    local BACKUP_FILE="/var/tmp/$(basename ${FILE}).$(date +%F-%N)"
    log_arguments "Backing up ${FILE} to ${BACKUP_FILE}."

    # The exit status of the function will be the exit status of the cp command.
    cp -p ${FILE} ${BACKUP_FILE}
  else
    # The file does not exist, so return a non-zero exit status.
    return 1
  fi
}

readonly VERBOSE='true'
log_logger  'HEllo'
log_logger 'HOw are u?'

backup_file /etc/passwd
#Make a desicion based on the exit status  of the function
if [[ "${?}" -eq '0' ]]
then
  log_arguments 'File backup succeeded!'
else
  log_arguments 'File backup failed!'
  exit 1
fi
