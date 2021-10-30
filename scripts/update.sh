# update plugins and stuff

BOLD=$(tput bold)
NORMAL=$(tput sgr0)

WORKING_ON="waterfall"
PLUGINS_DIR="plugins"

WATERFALL_PLUGINS=(
	"SkinsRestorer"
)
LOBBY_SERVER_PLUGINS=(
	"DiscordSRV"
	"CoreProtect"
	"EssentialsX"
	"HolographicDisplays"
	"SkinsRestorer"
	"worldEdit"
	"worldGuard"
)
SMP_SERVER_PLUGINS=(
	"CoreProtect"
	"EssentialsX"
	"IllegalStack"
	"SkinsRestorer"
	"StackMob"
	"worldEdit"
	"worldGuard"
)

bold() {
	echo "${BOLD}$@${NORMAL}"
}

updating() {
	echo "  updating $*"
}

get_plugins_dir() {
	case "$WORKING_ON" in
	waterfall)
		PLUGINS_DIR="plugins"
		;;

	lobby)
		PLUGINS_DIR="servers/lobby/plugins"
		;;

	smp)
		PLUGINS_DIR="servers/smp/plugins"
		;;

	*) ;;
	esac
}

### setup functions

setup_paperMC() {
	# make paper.jar symlink in each server folder

	# get the first search result for paper-*.jar
	PAPER_FILE=$(find master -type f -name "paper-*.jar" | head -n 1)

	# get directories in ./servers directory
	SERVER_DIRS=($(find servers -maxdepth 1 -type d -not -path "servers"))

	# make/replace symbolic link for paperMC
	for SERVER_DIR in "${SERVER_DIRS[@]}"; do
		PAPER_SYMLINK_PATH="$SERVER_DIR/paper.jar"

		# check if symlink exists
		if [ -L $PAPER_SYMLINK_PATH ]; then
			rm $PAPER_SYMLINK_PATH
		fi

		# copy paper.jar file
		cp "$PAPER_FILE" $PAPER_SYMLINK_PATH
	done
}

setup_plugin() {
	updating "$1"

	# find jar file
	ORIGINAL_JAR=$(find master -iname $1*.jar)
	get_plugins_dir
	NEW_JAR="$PLUGINS_DIR/$1.jar"

	# remove existing plugin symlink
	rm $NEW_JAR >/dev/null 2>&1

	# create (new) symlink
	cp $ORIGINAL_JAR $NEW_JAR
}

### MAIN

bold "setting up paperMC"
setup_paperMC

bold "setting up waterfall plugins"
for i in "${WATERFALL_PLUGINS[@]}"; do
	setup_plugin $i
done

WORKING_ON="lobby"
bold "setting up lobby plugins"
for i in "${LOBBY_SERVER_PLUGINS[@]}"; do
	setup_plugin $i
done

WORKING_ON="smp"
bold "setting up smp plugins"
for i in "${SMP_SERVER_PLUGINS[@]}"; do
	setup_plugin $i
done
