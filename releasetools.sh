#!/bin/bash
set -e

BRUNCH_COMBO=$1
if [ -z "$1" ]; then
    HOMEPWD=$PWD
    cd ../../..
    source build/envsetup.sh
    lunch
    cd $HOMEPWD
    BRUNCH_COMBO="$TARGET_PRODUCT"-"$TARGET_BUILD_VARIANT"
fi

if [[ -z "${OUT}" ]]; then
  echo "\$OUT Environment variable not set. please brunch first."
  exit
fi

if [[ -z "${LINEAGE_BUILD}" ]]; then
  echo "\$LINEAGE_BUILD Environment variable not set. please brunch first."
  exit
fi

if ! command -v gh &> /dev/null
then
  echo "gh command could not be found. please install gh."
  exit
fi

GH_AUTH_CHECK=$(gh auth status 2>/dev/null)
SUB='You are not logged'
if [[ "$GH_AUTH_CHECK" == *"$SUB"* ]]; then
  echo "You are not logged into any GitHub hosts. Run gh auth login to authenticate."
  exit
fi

GIT_REMOTE_CHECK=`git remote show origin`
SUB='fatal:'
if [[ "$GIT_REMOTE_CHECK" == *"$SUB"* ]]; then
  echo "git remote - origin not exist. Please add remote by the name of origin."
  exit
fi

if ! command -v md5sum &> /dev/null
then
  echo "md5sum command could not be found. please install md5sum."
  exit
fi

echo "IOKWiOKWiOKWiOKWiOKWiOKWiOKVlyDilojilojilojilojilojilojilojilojilZcg4paI4paI4paI4paI4paI4pWXICAgICDilojilojilZcgICDilojilojilZfilojilojilojilojilojilojilZcg4paI4paI4pWXICAgICAg4paI4paI4paI4paI4paI4paI4pWXICDilojilojilojilojilojilZcg4paI4paI4paI4paI4paI4paI4pWXIOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKVl+KWiOKWiOKWiOKWiOKWiOKWiOKVlyAK4paI4paI4pWU4pWQ4pWQ4pWQ4paI4paI4pWX4pWa4pWQ4pWQ4paI4paI4pWU4pWQ4pWQ4pWd4paI4paI4pWU4pWQ4pWQ4paI4paI4pWXICAgIOKWiOKWiOKVkSAgIOKWiOKWiOKVkeKWiOKWiOKVlOKVkOKVkOKWiOKWiOKVl+KWiOKWiOKVkSAgICAg4paI4paI4pWU4pWQ4pWQ4pWQ4paI4paI4pWX4paI4paI4pWU4pWQ4pWQ4paI4paI4pWX4paI4paI4pWU4pWQ4pWQ4paI4paI4pWX4paI4paI4pWU4pWQ4pWQ4pWQ4pWQ4pWd4paI4paI4pWU4pWQ4pWQ4paI4paI4pWXCuKWiOKWiOKVkSAgIOKWiOKWiOKVkSAgIOKWiOKWiOKVkSAgIOKWiOKWiOKWiOKWiOKWiOKWiOKWiOKVkSAgICDilojilojilZEgICDilojilojilZHilojilojilojilojilojilojilZTilZ3ilojilojilZEgICAgIOKWiOKWiOKVkSAgIOKWiOKWiOKVkeKWiOKWiOKWiOKWiOKWiOKWiOKWiOKVkeKWiOKWiOKVkSAg4paI4paI4pWR4paI4paI4paI4paI4paI4pWXICDilojilojilojilojilojilojilZTilZ0K4paI4paI4pWRICAg4paI4paI4pWRICAg4paI4paI4pWRICAg4paI4paI4pWU4pWQ4pWQ4paI4paI4pWRICAgIOKWiOKWiOKVkSAgIOKWiOKWiOKVkeKWiOKWiOKVlOKVkOKVkOKVkOKVnSDilojilojilZEgICAgIOKWiOKWiOKVkSAgIOKWiOKWiOKVkeKWiOKWiOKVlOKVkOKVkOKWiOKWiOKVkeKWiOKWiOKVkSAg4paI4paI4pWR4paI4paI4pWU4pWQ4pWQ4pWdICDilojilojilZTilZDilZDilojilojilZcK4pWa4paI4paI4paI4paI4paI4paI4pWU4pWdICAg4paI4paI4pWRICAg4paI4paI4pWRICDilojilojilZEgICAg4pWa4paI4paI4paI4paI4paI4paI4pWU4pWd4paI4paI4pWRICAgICDilojilojilojilojilojilojilojilZfilZrilojilojilojilojilojilojilZTilZ3ilojilojilZEgIOKWiOKWiOKVkeKWiOKWiOKWiOKWiOKWiOKWiOKVlOKVneKWiOKWiOKWiOKWiOKWiOKWiOKWiOKVl+KWiOKWiOKVkSAg4paI4paI4pWRCiDilZrilZDilZDilZDilZDilZDilZ0gICAg4pWa4pWQ4pWdICAg4pWa4pWQ4pWdICDilZrilZDilZ0gICAgIOKVmuKVkOKVkOKVkOKVkOKVkOKVnSDilZrilZDilZ0gICAgIOKVmuKVkOKVkOKVkOKVkOKVkOKVkOKVnSDilZrilZDilZDilZDilZDilZDilZ0g4pWa4pWQ4pWdICDilZrilZDilZ3ilZrilZDilZDilZDilZDilZDilZ0g4pWa4pWQ4pWQ4pWQ4pWQ4pWQ4pWQ4pWd4pWa4pWQ4pWdICDilZrilZDilZ0KICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgCg==" | base64 --decode
echo "OTA UPLOADER v1.0 made by hurrhnn."

read -n 1 -r -s -p $'Press any key to start.\n'
echo

mka installclean
brunch $BRUNCH_COMBO

for file in $OUT/lineage-*-*-UNOFFICIAL-$LINEAGE_BUILD.zip
do
  LINEAGE_RELEASE="${file}"
done

if [ ! -f "$LINEAGE_RELEASE" ]; then
  echo "ERROR! $LINEAGE_RELEASE file does not exist. please build tree completely first."
  exit
fi
echo "TARGET FILE: $LINEAGE_RELEASE"

LINEAGE_RELEASE_MD5SUM="$LINEAGE_RELEASE.md5sum"
if [ ! -f "$LINEAGE_RELEASE_MD5SUM" ]; then
  echo "ERROR! $LINEAGE_RELEASE_MD5SUM file does not exist!"
  exit
fi
echo "TARGET MD5SUM FILE: $LINEAGE_RELEASE_MD5SUM"

LINEAGE_MD5SUM="$OUT/checksum.md5sum"
cp $LINEAGE_RELEASE_MD5SUM $LINEAGE_MD5SUM
PREV_PWD=$PWD
cd $OUT/system
md5sum build.prop >> $LINEAGE_MD5SUM
cd $PREV_PWD
echo "TARGET CREATED MD5SUM FILE: $LINEAGE_MD5SUM"

LINEAGE_RELEASE_PROP="$OUT/system/build.prop"
if [ ! -f "$LINEAGE_RELEASE_PROP" ]; then
  echo "ERROR! $LINEAGE_RELEASE_PROP file does not exist!"
  exit
fi
echo "TARGET PROP FILE: $LINEAGE_RELEASE_PROP"
echo

DATE=`date -u`
FORMATTED_DATE=`date -u +%Y%m%d`
RELEASE_FILENAME="${LINEAGE_RELEASE#*${OUT}/}"
SUB="-UNOFFICIAL"
RELEASE_TITLE="${RELEASE_FILENAME%${SUB}*}-$LINEAGE_BUILD"

echo "[*] Release Title: $RELEASE_TITLE"
echo "[*] File Uploading..."

set +e
git tag -d $FORMATTED_DATE 2> /dev/null
git push --delete origin $FORMATTED_DATE 2> /dev/null

git tag $FORMATTED_DATE
git push origin $FORMATTED_DATE
set -e

set -x
gh release create -t "$RELEASE_TITLE" -n 'Auto-generated by `releasetools.sh` at '"`date -u`". --generate-notes --target "`git rev-list --max-count=1 HEAD`" $FORMATTED_DATE $LINEAGE_RELEASE $LINEAGE_MD5SUM $LINEAGE_RELEASE_PROP
set +x

echo
echo Done! check your device tree repositories.
exit