;                                                                      Errno.inc
;###############################################################################
;# Encoding: UTF-8                                                 Tab size: 4 #
;#                                                                             #
;#                         LINUX SYSTEM ERROR NUMBERS                          #
;#                                                                             #
;# License: LGPLv3+                              Copyleft (Ɔ) 2014, Jack Black #
;###############################################################################

;----------------------	-------	-----------------------------------------------
; Error					Code	Description
;----------------------	-------	-----------------------------------------------
ERRNO_PERM			 	= 1		; Operation not permitted
ERRNO_NOENT			 	= 2		; No such file or directory
ERRNO_SRCH			 	= 3		; No such process
ERRNO_INTR				= 4		; Interrupted system call
ERRNO_IO				= 5		; I/O error
ERRNO_NXIO			 	= 6		; No such device or address
ERRNO_2BIG				= 7		; Argument list too long
ERRNO_NOEXEC			= 8		; Exec format error
ERRNO_BADF				= 9		; Bad file number
ERRNO_CHILD				= 10	; No child processes
ERRNO_AGAIN				= 11	; Try again (Operation would block)
ERRNO_NOMEM				= 12	; Out of memory
ERRNO_ACCES				= 13	; Permission denied
ERRNO_FAULT				= 14	; Bad address
ERRNO_NOTBLK			= 15	; Block device required
ERRNO_BUSY				= 16	; Device or resource busy
ERRNO_EXIST				= 17	; File exists
ERRNO_XDEV				= 18	; Cross-device link
ERRNO_NODEV				= 19	; No such device
ERRNO_NOTDIR			= 20	; Not a directory
ERRNO_ISDIR				= 21	; Is a directory
ERRNO_INVAL				= 22	; Invalid argument
ERRNO_NFILE				= 23	; File table overflow
ERRNO_MFILE				= 24	; Too many open files
ERRNO_NOTTY				= 25	; Not a typewriter
ERRNO_TXTBSY			= 26	; Text file busy
ERRNO_FBIG				= 27	; File too large
ERRNO_NOSPC				= 28	; No space left on device
ERRNO_SPIPE				= 29	; Illegal seek
ERRNO_ROFS				= 30	; Read-only file system
ERRNO_MLINK				= 31	; Too many links
ERRNO_PIPE				= 32	; Broken pipe
ERRNO_DOM				= 33	; Math argument out of domain of function.
ERRNO_RANGE				= 34	; Math result not representable.
ERRNO_DEADLK			= 35	; Resource deadlock would occur
ERRNO_NAMETOOLONG		= 36	; File name too long
ERRNO_NOLCK				= 37	; No record locks available
ERRNO_NOSYS				= 38	; Function not implemented
ERRNO_NOTEMPTY			= 39	; Directory not empty
ERRNO_LOOP				= 40	; Too many symbolic links encountered
ERRNO_WOULDBLOCK		= ERRNO_AGAIN
ERRNO_NOMSG				= 42	; No message of desired type
ERRNO_IDRM				= 43	; Identifier removed
ERRNO_CHRNG				= 44	; Channel number out of range
ERRNO_L2NSYNC			= 45	; Level 2 not synchronized
ERRNO_L3HLT				= 46	; Level 3 halted
ERRNO_L3RST				= 47	; Level 3 reset
ERRNO_LNRNG				= 48	; Link number out of range
ERRNO_UNATCH			= 49	; Protocol driver not attached
ERRNO_NOCSI				= 50	; No CSI structure available
ERRNO_L2HLT				= 51	; Level 2 halted
ERRNO_BADE				= 52	; Invalid exchange
ERRNO_BADR				= 53	; Invalid request descriptor
ERRNO_XFULL				= 54	; Exchange full
ERRNO_NOANO				= 55	; No anode
ERRNO_BADRQC			= 56	; Invalid request code
ERRNO_BADSLT			= 57	; Invalid slot
ERRNO_DEADLOCK			= ERRNO_DEADLK
ERRNO_BFONT				= 59	; Bad font file format
ERRNO_NOSTR				= 60	; Device not a stream
ERRNO_NODATA			= 61	; No data available
ERRNO_TIME				= 62	; Timer expired
ERRNO_NOSR				= 63	; Out of streams resources
ERRNO_NONET				= 64	; Machine is not on the network
ERRNO_NOPKG				= 65	; Package not installed
ERRNO_REMOTE			= 66	; Object is remote
ERRNO_NOLINK			= 67	; Link has been severed
ERRNO_ADV				= 68	; Advertise error
ERRNO_SRMNT				= 69	; Srmount error
ERRNO_COMM				= 70	; Communication error on send
ERRNO_PROTO				= 71	; Protocol error
ERRNO_MULTIHOP			= 72	; Multihop attempted
ERRNO_DOTDOT			= 73	; RFS specific error
ERRNO_BADMSG			= 74	; Not a data message
ERRNO_OVERFLOW			= 75	; Value too large for defined data type
ERRNO_NOTUNIQ			= 76	; Name not unique on network
ERRNO_BADFD				= 77	; File descriptor in bad state
ERRNO_REMCHG			= 78	; Remote address changed
ERRNO_LIBACC			= 79	; Can not access a needed shared library
ERRNO_LIBBAD			= 80	; Accessing a corrupted shared library
ERRNO_LIBSCN			= 81	; .lib section in a.out corrupted
ERRNO_LIBMAX			= 82	; Attempting to link in too many shared libraries
ERRNO_LIBEXEC			= 83	; Cannot exec a shared library directly
ERRNO_ILSEQ				= 84	; Illegal byte sequence
ERRNO_RESTART			= 85	; Interrupted system call should be restarted
ERRNO_STRPIPE			= 86	; Streams pipe error
ERRNO_USERS				= 87	; Too many users
ERRNO_NOTSOCK			= 88	; Socket operation on non-socket
ERRNO_DESTADDRREQ		= 89	; Destination address required
ERRNO_MSGSIZE			= 90	; Message too long
ERRNO_PROTOTYPE			= 91	; Protocol wrong type for socket
ERRNO_NOPROTOOPT		= 92	; Protocol not available
ERRNO_PROTONOSUPPORT	= 93	; Protocol not supported
ERRNO_SOCKTNOSUPPORT	= 94	; Socket type not supported
ERRNO_OPNOTSUPP			= 95	; Operation not supported on transport endpoint
ERRNO_NOTSUP			= ERRNO_OPNOTSUPP
ERRNO_PFNOSUPPORT		= 96	; Protocol family not supported
ERRNO_AFNOSUPPORT		= 97	; Address family not supported by protocol
ERRNO_ADDRINUSE			= 98	; Address already in use
ERRNO_ADDRNOTAVAIL		= 99	; Cannot assign requested address
ERRNO_NETDOWN			= 100	; Network is down
ERRNO_NETUNREACH		= 101	; Network is unreachable
ERRNO_NETRESET			= 102	; Network dropped connection because of reset
ERRNO_CONNABORTED		= 103	; Software caused connection abort
ERRNO_CONNRESET			= 104	; Connection reset by peer
ERRNO_NOBUFS			= 105	; No buffer space available
ERRNO_ISCONN			= 106	; Transport endpoint is already connected
ERRNO_NOTCONN			= 107	; Transport endpoint is not connected
ERRNO_SHUTDOWN			= 108	; Cannot send after transport endpoint shutdown
ERRNO_TOOMANYREFS		= 109	; Too many references: cannot splice
ERRNO_TIMEDOUT			= 110	; Connection timed out
ERRNO_CONNREFUSED		= 111	; Connection refused
ERRNO_HOSTDOWN			= 112	; Host is down
ERRNO_HOSTUNREACH		= 113	; No route to host
ERRNO_ALREADY			= 114	; Operation already in progress
ERRNO_INPROGRESS		= 115	; Operation now in progress
ERRNO_STALE				= 116	; Stale NFS file handle
ERRNO_UCLEAN			= 117	; Structure needs cleaning
ERRNO_NOTNAM			= 118	; Not a XENIX named type file
ERRNO_NAVAIL			= 119	; No XENIX semaphores available
ERRNO_ISNAM				= 120	; Is a named type file
ERRNO_REMOTEIO			= 121	; Remote I/O error
ERRNO_DQUOT				= 122	; Quota exceeded
ERRNO_NOMEDIUM			= 123	; No medium found
ERRNO_MEDIUMTYPE		= 124	; Wrong medium type
ERRNO_CANCELED			= 125	; Operation Canceled
ERRNO_NOKEY				= 126	; Required key not available
ERRNO_KEYEXPIRED		= 127	; Key has expired
ERRNO_KEYREVOKED		= 128	; Key has been revoked
ERRNO_KEYREJECTED		= 129	; Key was rejected by service
ERRNO_OWNERDEAD			= 130	; Owner died
ERRNO_NOTRECOVERABLE	= 131	; State not recoverable
ERRNO_RFKILL			= 132	; Operation not possible due to RF-kill
ERRNO_HWPOISON			= 133	; Memory page has hardware error

;###############################################################################
;#                                 END OF FILE                                 #
;###############################################################################
