currentDirectory=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )

echo "Serving generated site ..."
docker run -it --net host \
	-v /tmp/.X11-unix:/tmp/.X11-unix -v $currentDirectory/_dist/:/git-next-level \
	-e DISPLAY=unix$DISPLAY\
	--rm \
	jess/chrome \
	--no-first-run --no-managed-user-acknowledgment-check --no-default-browser-check --user-data-dir=/data --enable-local-file-accesses file:////git-next-level/prez.html

