;;; erc-autoloads.el --- automatically extracted autoloads  -*- lexical-binding: t -*-
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "erc" "erc.el" (0 0 0 0))
;;; Generated autoloads from erc.el

(autoload 'erc-select-read-args "erc" "\
Prompt the user for values of nick, server, port, and password." nil nil)

(autoload 'erc "erc" "\
ERC is a powerful, modular, and extensible IRC client.
This function is the main entry point for ERC.

It allows selecting connection parameters, and then starts ERC.

Non-interactively, it takes the keyword arguments
   (server (erc-compute-server))
   (port   (erc-compute-port))
   (nick   (erc-compute-nick))
   password
   (full-name (erc-compute-full-name))

That is, if called with

   (erc :server \"irc.libera.chat\" :full-name \"J. Random Hacker\")

then the server and full-name will be set to those values,
whereas `erc-compute-port' and `erc-compute-nick' will be invoked
for the values of the other parameters.

\(fn &key (SERVER (erc-compute-server)) (PORT (erc-compute-port)) (NICK (erc-compute-nick)) PASSWORD (FULL-NAME (erc-compute-full-name)))" t nil)

(defalias 'erc-select #'erc)

(autoload 'erc-tls "erc" "\
ERC is a powerful, modular, and extensible IRC client.
This function is the main entry point for ERC over TLS.

It allows selecting connection parameters, and then starts ERC
over TLS.

Non-interactively, it takes the keyword arguments
   (server (erc-compute-server))
   (port   (erc-compute-port))
   (nick   (erc-compute-nick))
   password
   (full-name (erc-compute-full-name))
   client-certificate

That is, if called with

   (erc-tls :server \"irc.libera.chat\" :full-name \"J. Random Hacker\")

then the server and full-name will be set to those values,
whereas `erc-compute-port' and `erc-compute-nick' will be invoked
for the values of their respective parameters.

CLIENT-CERTIFICATE, if non-nil, should either be a list where the
first element is the certificate key file name, and the second
element is the certificate file name itself, or t, which means
that `auth-source' will be queried for the key and the
certificate.  Authenticating using a TLS client certificate is
also referred to as \"CertFP\" (Certificate Fingerprint)
authentication by various IRC networks.

Example usage:

    (erc-tls :server \"irc.libera.chat\" :port 6697
             :client-certificate
             '(\"/home/bandali/my-cert.key\"
               \"/home/bandali/my-cert.crt\"))

\(fn &key (SERVER (erc-compute-server)) (PORT (erc-compute-port)) (NICK (erc-compute-nick)) PASSWORD (FULL-NAME (erc-compute-full-name)) CLIENT-CERTIFICATE)" t nil)

(autoload 'erc-handle-irc-url "erc" "\
Use ERC to IRC on HOST:PORT in CHANNEL as USER with PASSWORD.
If ERC is already connected to HOST:PORT, simply /join CHANNEL.
Otherwise, connect to HOST:PORT as USER and /join CHANNEL.

\(fn HOST PORT CHANNEL USER PASSWORD)" nil nil)

(register-definition-prefixes "erc" '("define-erc-module" "erc-"))

;;;***

;;;### (autoloads nil "erc-backend" "erc-backend.el" (0 0 0 0))
;;; Generated autoloads from erc-backend.el

(register-definition-prefixes "erc-backend" '("erc-"))

;;;***

;;;### (autoloads nil "erc-goodies" "erc-goodies.el" (0 0 0 0))
;;; Generated autoloads from erc-goodies.el

(register-definition-prefixes "erc-goodies" '("erc-"))

;;;***

;;;### (autoloads nil "erc-ibuffer" "erc-ibuffer.el" (0 0 0 0))
;;; Generated autoloads from erc-ibuffer.el

(register-definition-prefixes "erc-ibuffer" '("erc-"))

;;;***

;;;### (autoloads nil "erc-lang" "erc-lang.el" (0 0 0 0))
;;; Generated autoloads from erc-lang.el

(register-definition-prefixes "erc-lang" '("erc-cmd-LANG" "iso-638-languages" "language"))

;;;***

;;;### (autoloads nil "erc-networks" "erc-networks.el" (0 0 0 0))
;;; Generated autoloads from erc-networks.el

(autoload 'erc-determine-network "erc-networks" "\
Return the name of the network or \"Unknown\" as a symbol.
Use the server parameter NETWORK if provided, otherwise parse the
server name and search for a match in `erc-networks-alist'." nil nil)

(autoload 'erc-server-select "erc-networks" "\
Interactively select a server to connect to using `erc-server-alist'." t nil)

(register-definition-prefixes "erc-networks" '("erc-"))

;;;***

;;;### (autoloads nil nil ("erc-autoaway.el" "erc-button.el" "erc-capab.el"
;;;;;;  "erc-compat.el" "erc-dcc.el" "erc-desktop-notifications.el"
;;;;;;  "erc-ezbounce.el" "erc-fill.el" "erc-identd.el" "erc-imenu.el"
;;;;;;  "erc-join.el" "erc-list.el" "erc-log.el" "erc-match.el" "erc-menu.el"
;;;;;;  "erc-netsplit.el" "erc-notify.el" "erc-page.el" "erc-pcomplete.el"
;;;;;;  "erc-pkg.el" "erc-replace.el" "erc-ring.el" "erc-services.el"
;;;;;;  "erc-sound.el" "erc-speedbar.el" "erc-spelling.el" "erc-stamp.el"
;;;;;;  "erc-status-sidebar.el" "erc-track.el" "erc-truncate.el"
;;;;;;  "erc-xdcc.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; erc-autoloads.el ends here
