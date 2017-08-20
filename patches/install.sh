echo $1
rootdirectory="$PWD"
# ---------------------------------

dirs="bionic frameworks/base frameworks/av frameworks/native packages/apps/Dialer packages/services/Telephony system/netd system/core hardware/libhardware "


for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/lenovo/A7010a48/patches/$dir/*.patch
	echo " "
done

# -----------------------------------
echo "Changing to build directory..."
cd $rootdirectory
