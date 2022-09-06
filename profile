# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

###############################################################################
# add shared lib link path into /etc/ld.so.config, do not set LD_LIBRARY_PATH #
# see https://help.ubuntu.com/community/EnvironmentVariables                  #
###############################################################################

###############################################################################
# add man path into /etc/manpath.config or ~/.manpath, do not set MANPATH     #
###############################################################################

# for paraview 5.10.1
if [ -d "${HOME}/opt/paraview-5.10.1" ] ; then
    export PATH="${PATH:+${PATH}:}${HOME}/opt/paraview-5.10.1/bin"
fi

# for cuda 11.4
if [ -d "/usr/local/cuda-11.7" ] ; then
    export PATH="/usr/local/cuda-11.7/bin${PATH:+:${PATH}}"
fi

# for nvidia hpc sdk
if [ -d "/usr/local/nvhpc" ] ; then
    export PATH="/usr/local/nvhpc/Linux_x86_64/22.7/compilers/bin${PATH:+:${PATH}}"
fi

# for vtk 9.2.0
if [ -d "/usr/local/vtk-9.2.0" ] ; then
    export PATH="/usr/local/vtk-9.2.0/bin${PATH:+:${PATH}}"
fi
