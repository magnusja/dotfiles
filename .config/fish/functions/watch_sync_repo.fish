function watch_sync_repo
	switch (uname)
    case Linux
		echo 'Using poll monitor'
        set -g fswatch_additional_params '--monitor=poll_monitor'
    case '*'
		echo 'Using standard monitor'
		set -g fswatch_additional_params ''
	end

	echo 'Initial sync ...'
	rsync_repo $argv[1] $argv[2]

	echo 'Starting fswatch ...'
	fswatch --exclude .git $fswatch_additional_params -r $argv[1] | while read -l f
		if test $status -gt 128
			echo "exiting"
			return 128
		end

		echo $f
		rsync_repo $argv[1] $argv[2]

		if test $status -gt 128
			echo "exiting"
			return 128
		end
	end
end
