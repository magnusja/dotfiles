function rsync_repo
	rsync -azhP --delete --exclude .git --exclude-from=$argv[1]/.gitignore $argv[1] $argv[2] 
end