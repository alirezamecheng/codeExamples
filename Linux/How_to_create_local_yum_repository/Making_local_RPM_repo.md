# Making and Updating a local repo

## making 

1. To make the repo first copy all of the RPM files in the target destination. For example (`/home/alireza/packages`) or wherever you like. Let me call this path `PREFIX` from now. 

1. change the ownership of the files `chown -R root.root $PREFIX`

1.  Install the `createrepo` package if not installed yet, and run

    ```bash
    createrepo $PREFIX
    chmod -R o-w+r $PREFIX
    ```
1. Create a repository configuration file, e.g. `/etc/yum.repos.d/customrepo.repo` containing:
    ```bash
    [local]
    name=My RPM System Package Repo
    baseurl=file:///home/mypackage_dir/repository
    enabled=1
    gpgcheck=0
    ```
    Note to change the `baseurl` to the `PREFIX`.

1. You can install your packages using `yum install` now. 


## Updating

1. Updating process is just like the making process with the sole exception of a `--update` flag, which must be passed to the `createrepo` command. 
This flag reduces the make time significantly. 

    ```bash
    #!/bin/sh

    PREFIX=/home/alireza/packages

    chown -R root.root $PREFIX
    createrepo --update $PREFIX
    chmod -R o-w+r $PREFIX

    # users must run `yum clean all` to see the changes 

    echo 'executing `yum clean all`'
    yum clean all

    echo "===================================================="
    echo 'users must run `yum clean all` to see the changes'
    echo "===================================================="
    ```

>>**NOTE 1:** Note that user must execute the `yum clean all` command to see te changes immediately.

>>**NOTE 2:** You can use the provided bash file in the `SRCs` directory. But you must change it according to your needs and you must create the `.repo` file as well.
