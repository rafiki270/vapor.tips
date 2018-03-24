baseDir="$GHOST_INSTALL/content.orig" 
	for src in "$baseDir"/*/ "$baseDir"/themes/*; do 
		src="${src%/}" 
		target="$GHOST_CONTENT/${src#$baseDir/}" 
		mkdir -p "$(dirname "$target")" 
		if [ ! -e "$target" ]; then 
			tar -cC "$(dirname "$src")" "$(basename "$src")" | tar -xC "$(dirname "$target")" 
		fi 
done 