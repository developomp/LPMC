# update plugins and shit

setup_paperMC() {
	# make paper.jar symlink in each server folder
	echo "setting up paperMC"

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

		ln -s "$PAPER_FILE" $PAPER_SYMLINK_PATH
	done
}

setup_clearlagg() {
	# https://dev.bukkit.org/projects/clearlagg/files/latest
	:
}

setup_worldedit() {
	:
}

### MAIN

# create master directory if it doesn't exist
if [ ! -d master ]; then
	mkdir master
fi

LOBBY_SERVER_PLUGINS=()
SMP_SERVER_PLUGINS=()
ANARCHY_SERVER_PLUGINS=()

setup_paperMC
