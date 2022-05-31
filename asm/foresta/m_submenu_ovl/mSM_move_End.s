lbl_805EF360:
/* 805EF360  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EF364  7C 08 02 A6 */	mflr r0
/* 805EF368  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EF36C  4B FF FD 19 */	bl mSM_return_func
/* 805EF370  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EF374  7C 08 03 A6 */	mtlr r0
/* 805EF378  38 21 00 10 */	addi r1, r1, 0x10
/* 805EF37C  4E 80 00 20 */	blr 
