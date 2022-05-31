lbl_804AB67C:
/* 804AB67C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AB680  7C 08 02 A6 */	mflr r0
/* 804AB684  38 80 00 04 */	li r4, 4
/* 804AB688  38 A0 00 01 */	li r5, 1
/* 804AB68C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AB690  38 C0 00 03 */	li r6, 3
/* 804AB694  38 E0 00 00 */	li r7, 0
/* 804AB698  A9 03 09 A2 */	lha r8, 0x9a2(r3)
/* 804AB69C  A9 23 09 A4 */	lha r9, 0x9a4(r3)
/* 804AB6A0  4B FF F8 B9 */	bl func_804AAF58
/* 804AB6A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AB6A8  7C 08 03 A6 */	mtlr r0
/* 804AB6AC  38 21 00 10 */	addi r1, r1, 0x10
/* 804AB6B0  4E 80 00 20 */	blr 
