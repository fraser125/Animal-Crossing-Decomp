lbl_8059C264:
/* 8059C264  A0 03 00 98 */	lhz r0, 0x98(r3)
/* 8059C268  54 00 DF BD */	rlwinm. r0, r0, 0x1b, 0x1e, 0x1e
/* 8059C26C  40 82 00 18 */	bne lbl_8059C284
/* 8059C270  88 83 00 98 */	lbz r4, 0x98(r3)
/* 8059C274  54 80 F7 BD */	rlwinm. r0, r4, 0x1e, 0x1e, 0x1e
/* 8059C278  40 82 00 0C */	bne lbl_8059C284
/* 8059C27C  54 80 CF FF */	rlwinm. r0, r4, 0x19, 0x1f, 0x1f
/* 8059C280  4D 82 00 20 */	beqlr 
lbl_8059C284:
/* 8059C284  A8 83 00 36 */	lha r4, 0x36(r3)
/* 8059C288  3C 84 00 01 */	addis r4, r4, 1
/* 8059C28C  38 04 80 00 */	addi r0, r4, -32768
/* 8059C290  B0 03 00 36 */	sth r0, 0x36(r3)
/* 8059C294  B0 03 00 DE */	sth r0, 0xde(r3)
/* 8059C298  4E 80 00 20 */	blr 
