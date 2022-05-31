lbl_804AB1BC:
/* 804AB1BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB1C0  7C 08 02 A6 */	mflr r0
/* 804AB1C4  38 80 00 04 */	li r4, 4
/* 804AB1C8  38 A0 00 03 */	li r5, 3
/* 804AB1CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB1D0  38 C0 00 03 */	li r6, 3
/* 804AB1D4  38 E0 00 00 */	li r7, 0
/* 804AB1D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AB1DC  7C 7F 1B 78 */	mr r31, r3
/* 804AB1E0  A9 03 09 A2 */	lha r8, 0x9a2(r3)
/* 804AB1E4  A9 23 09 A4 */	lha r9, 0x9a4(r3)
/* 804AB1E8  4B FF FD 71 */	bl func_804AAF58
/* 804AB1EC  80 7F 08 40 */	lwz r3, 0x840(r31)
/* 804AB1F0  38 00 FF EB */	li r0, -21
/* 804AB1F4  7C 60 00 38 */	and r0, r3, r0
/* 804AB1F8  90 1F 08 40 */	stw r0, 0x840(r31)
/* 804AB1FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AB200  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB204  7C 08 03 A6 */	mtlr r0
/* 804AB208  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB20C  4E 80 00 20 */	blr 
