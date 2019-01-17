function watch_sync_repo
	rsync_repo $argv[1] $argv[2]
	fswatch --exclude .git $argv[1] | while read -l f
		echo $status
		if test $status -gt 128
			break
		end

		echo $f
		rsync_repo $argv[1] $argv[2]
	end
end