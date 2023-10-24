
do_exec()
{
	echo "run : $cmd"
	eval $cmd
}

echo "##### test : default behavior"
cmd=make
do_exec

echo "##### test : set ENV behavior"
cmd="HOME=env_home make"
do_exec

echo "##### test : option behavior"
cmd="make HOME=opt_home"
do_exec

echo "##### test : set ENV and option behavior"
cmd="HOME=env_home make HOME=opt_home"
do_exec

