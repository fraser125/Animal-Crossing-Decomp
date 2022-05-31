lbl_804D6C88:
/* 804D6C88  88 03 0F B5 */	lbz r0, 0xfb5(r3)
/* 804D6C8C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804D6C90  40 82 00 14 */	bne lbl_804D6CA4
/* 804D6C94  38 00 00 00 */	li r0, 0
/* 804D6C98  38 60 00 00 */	li r3, 0
/* 804D6C9C  90 04 00 00 */	stw r0, 0(r4)
/* 804D6CA0  4E 80 00 20 */	blr 
lbl_804D6CA4:
/* 804D6CA4  80 03 0F B0 */	lwz r0, 0xfb0(r3)
/* 804D6CA8  38 60 00 01 */	li r3, 1
/* 804D6CAC  90 04 00 00 */	stw r0, 0(r4)
/* 804D6CB0  4E 80 00 20 */	blr 
