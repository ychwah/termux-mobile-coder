#!/data/data/com.termux/files/usr/bin/bash

install() {
    echo -e "\e[32mInstalling \"phpmyadmin\" and required dependencies...\e[0m"
    pkg install -y php phpmyadmin mariadb

    # Allow No Password for login
    sed -i "s/\(\$cfg\['Servers'\]\[\$i\]\['AllowNoPassword'\] = \)\s*false;/\1true;/" $PREFIX/share/phpmyadmin/config.inc.php

    sed -i '/LoadModule mpm_worker_module libexec\/apache2\/mod_mpm_worker\.so/ s/^/#/' $PREFIX/etc/apache2/httpd.conf
    sed -i '/#LoadModule mpm_prefork_module libexec\/apache2\/mod_mpm_prefork\.so/ s/^#//' $PREFIX/etc/apache2/httpd.conf

    cat << EOF >> $PREFIX/etc/apache2/httpd.conf 
<FilesMatch \.php$>
    SetHandler application/x-httpd-php
</FilesMatch> 

#LoadModule php_module libexec/apache2/libphp.so 
EOF

    echo -e '#!/data/data/com.termux/files/usr/bin/bash\nstatus=$(pgrep -l mariadbd)\nif [ -z "$status" ]; then\n\tmariadbd-safe &\nfi\napachectl start\necho "Apache PHPMyAdmin started..."\necho "Running on http://127.0.0.1:8080/phpmyadmin"\ntermux-open http://127.0.0.1:8080/phpmyadmin' > pma-start
    echo -e '#!/data/data/com.termux/files/usr/bin/bash\napachectl stop\necho "Stopped PHPMyAdmin process."\necho "To stop MariaDB process as well, run \"pkill -f mariadb\""' > pma-stop
    echo -e '#!/data/data/com.termux/files/usr/bin/bash\npkg uninstall phpmyadmin -y\nrm $PREFIX/bin/pma-start $PREFIX/bin/pma-stop $PREFIX/bin/pma-uninstall\necho "Uninstalled PHPMyAdmin..."' > pma-uninstall

    chmod +x pma-start pma-stop pma-uninstall

    mv pma-* $PREFIX/bin/

    echo -e "\e[32mPackage \"phpmyadmin\" installed successfully...\e[0m"
    echo -e "Commands:"
    echo -e "\e[32mCommand \"pma-start\" - Start PHPMyAdmin and MariaDB\e[0m"
    echo -e "\e[32mOr running \"apachectl start\" and visiting http://127.0.0.1:8080/phpmyadmin\e[0m"
    echo -e "\e[32mCommand \"pma-stop\" - Stop PHPMyAdmin\e[0m"
    echo -e "\e[32mCommand \"pma-uninstall\" - Uninstall PHPMyAdmin\e[0m"
}

install