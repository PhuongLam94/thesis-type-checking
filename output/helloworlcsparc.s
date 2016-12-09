        .section	".text"
	.global		_start
_start:
	mov	4,%g1			! 4 is SYS_write
	mov	1,%o0			! 1 is stdout
	set	.msg,%o1		! pointer to buffer
	mov	(.msgend-.msg),%o2	! length
	ta	8

	mov	1,%g1			! 1 is SYS_exit
	clr	%o0			! return status is 0
	ta	8

.msg:
	.ascii	"Hello world!\n"
.msgend:

