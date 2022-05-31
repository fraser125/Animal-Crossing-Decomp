lbl_805A1DE0:
/* 805A1DE0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A1DE4  7C 08 02 A6 */	mflr r0
/* 805A1DE8  7C 65 1B 78 */	mr r5, r3
/* 805A1DEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A1DF0  38 00 00 00 */	li r0, 0
/* 805A1DF4  90 03 01 D0 */	stw r0, 0x1d0(r3)
/* 805A1DF8  7C 83 23 78 */	mr r3, r4
/* 805A1DFC  38 85 01 FC */	addi r4, r5, 0x1fc
/* 805A1E00  B0 05 02 40 */	sth r0, 0x240(r5)
/* 805A1E04  4B DF 28 65 */	bl ClObjPipe_dt
/* 805A1E08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A1E0C  7C 08 03 A6 */	mtlr r0
/* 805A1E10  38 21 00 10 */	addi r1, r1, 0x10
/* 805A1E14  4E 80 00 20 */	blr 
