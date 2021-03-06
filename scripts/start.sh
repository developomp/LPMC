# usage: scripts/start.sh <OPTION HERE>

AVAILABLE_OPTIONS=(
	waterfall
	lobby
	smp
)

# uncomment if you need specific version of java
# JAVA=/usr/lib/jvm/java-17-openjdk/bin/java
if [ -z ${JAVA+x} ]; then
	JAVA=java
fi

start_waterfall() {
	echo "starting waterfall"

	WATERFALL=$(find . -maxdepth 1 -type f -name waterfall*.jar)
	$JAVA -Xmx128M -Xms128M -jar $WATERFALL
}

start_paper() {
	# $1: working directory
	# $2: RAM

	cd $1

	# https://blog.airplane.gg/aikar-flags/#how-to-use-the-flags
	$JAVA -Xms$2 -Xmx$2 \
		-XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch \
		-XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 \
		-XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -XX:G1NewSizePercent=30 -XX:G1MaxNewSizePercent=40 -XX:G1HeapRegionSize=8M \
		-XX:G1ReservePercent=20 -XX:InitiatingHeapOccupancyPercent=15 -Dusing.aikars.flags=https://mcflags.emc.gs -Daikars.new.flags=true \
		-jar paper.jar nogui

}

start_lobby() {
	start_paper "servers/lobby" "1G"
}

start_smp() {
	start_paper "servers/smp" "3G"
}

# check arguments

if [[ ! " ${AVAILABLE_OPTIONS[*]} " =~ " ${1} " ]]; then
	echo "invalid argument: ${1}"
	echo "available options are:"
	for i in "${AVAILABLE_OPTIONS[@]}"; do
		echo "  - ${i}"
	done
fi

case $1 in
waterfall)
	start_waterfall
	;;

lobby)
	start_lobby
	;;

smp)
	start_smp
	;;
*)
	echo "unknown option: $1"
	;;
esac
