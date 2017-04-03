function fsub
	fzf > $TMPDIR/fzf.result; and subl (cat $TMPDIR/fzf.result)
end

function fsubl
    fzf > $TMPDIR/fzf.result; and subl (cat $TMPDIR/fzf.result)
end

function fuck --description 'Correct your previous console command'
    set -l fucked_up_command $history[1];  env TF_ALIAS=fuck PYTHONIOENCODING=utf-8 thefuck $fucked_up_command | read -l unfucked_command;  if [ "$unfucked_command" != "" ];    eval $unfucked_command;    history --delete $fucked_up_command;    history --merge ^ /dev/null;  end;
end

function fnode
    fzf > $TMPDIR/fzf.result; and node (cat $TMPDIR/fzf.result)
end

function fruby
    fzf > $TMPDIR/fzf.result; and ruby (cat $TMPDIR/fzf.result)
end
