# Vagrant-Ansible-Wordpress-DB-y-Balanceador-de-carga
Trabajo Practico realizado para la catedra Redes de computadoras - FCEFyN - UNC

El trabajo consiste en crear 4 nodos con Vagrant y provisionarlos con Ansible. La estructura del sistema es la siguiente:

<a href="http://es.tinypic.com?ref=14lq34l" target="_blank"><img src="http://i68.tinypic.com/14lq34l.png" border="0" alt="Image and video hosting by TinyPic"></a>

Donde el ServidorHTTP brinda el el cliente Apache que tiene configurado a Wordpress como pagina pricipal. En el ServidorDB se crea la base de datos a la cual se conecta Wordpress. Los servidores ServidorLB1 y ServidorLB2 tienen configurado Corosync y Pacemaker para comunicacin de los nodos y creación del cluster de HA, y tienen instlado HAproxy para balanceo de carga entre dichos nodos.

Se crea una IP flotante(192.168.100.100) como recurso del cluster, que es usada como FrontEnd del servidor HAproxy para poder acceder al servicio proporcionado por el ServidorHTTP.
