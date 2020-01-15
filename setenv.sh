#!/bin/sh
#
# Set up environment variables and check secret env vars also set
#
export GIT_SERVER="github.com"
export GIT_OWNER="git"
export GIT_USER="mikefultonbluemix"
# order of the repos matters. zbrew requires zbrew-zhw to be installed to run tests
export REPO_LIST="zbrew-zhw zbrew zbrew-eqa zbrew-igy zbrew-bgz"
export DEPLOY_SERVER="api.bintray.com"
export DEPLOY_USER="fultonm"
export DEPLOY_REPO_PREFIX="content/fultonm/zbrew/"
export DEPLOY_REPO_SUFFIX="/"
export DEPLOY_USER="fultonm"
export BUILD_ROOT="${HOME}/zbrew-build"
export DEPLOY_ROOT="${HOME}/zbrew-deploy"

if [ -z "${DEPLOY_API_KEY}" ]; then
        echo "Need to export DEPLOY_API_KEY to deploy to ${DEPLOY_SERVER}"
fi
if [ -z "${SLACK_MSG_URL}" ]; then
        echo "Need to export SLACK_MSG_URL to deploy to ${DEPLOY_SERVER}"
fi

mkdir -p "${BUILD_ROOT}"
mkdir -p "${DEPLOY_ROOT}"

export PATH="${BUILD_ROOT}/zbrew/bin:${PATH}"
