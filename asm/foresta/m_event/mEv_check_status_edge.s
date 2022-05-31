lbl_8039DB64:
/* 8039DB64  3C 80 81 16 */	lis r4, status_edge@ha /* 0x8116768C@ha */
/* 8039DB68  7C 60 07 34 */	extsh r0, r3
/* 8039DB6C  38 64 76 8C */	addi r3, r4, status_edge@l /* 0x8116768C@l */
/* 8039DB70  80 63 00 00 */	lwz r3, 0(r3)
/* 8039DB74  7C 63 03 78 */	or r3, r3, r0
/* 8039DB78  30 03 FF FF */	addic r0, r3, -1
/* 8039DB7C  7C 60 19 10 */	subfe r3, r0, r3
/* 8039DB80  4E 80 00 20 */	blr 
