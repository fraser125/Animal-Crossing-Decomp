lbl_8062EDB8:
/* 8062EDB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062EDBC  7C 08 02 A6 */	mflr r0
/* 8062EDC0  7C 66 1B 78 */	mr r6, r3
/* 8062EDC4  38 A0 00 00 */	li r5, 0
/* 8062EDC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062EDCC  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 8062EDD0  28 00 17 AC */	cmplwi r0, 0x17ac
/* 8062EDD4  7C 83 23 78 */	mr r3, r4
/* 8062EDD8  38 84 02 00 */	addi r4, r4, 0x200
/* 8062EDDC  41 80 00 10 */	blt lbl_8062EDEC
/* 8062EDE0  28 00 1B A7 */	cmplwi r0, 0x1ba7
/* 8062EDE4  41 81 00 08 */	bgt lbl_8062EDEC
/* 8062EDE8  38 A0 00 01 */	li r5, 1
lbl_8062EDEC:
/* 8062EDEC  20 05 00 00 */	subfic r0, r5, 0
/* 8062EDF0  54 C5 04 3E */	clrlwi r5, r6, 0x10
/* 8062EDF4  7C C0 01 10 */	subfe r6, r0, r0
/* 8062EDF8  38 05 E8 54 */	addi r0, r5, -6060
/* 8062EDFC  7C 00 16 70 */	srawi r0, r0, 2
/* 8062EE00  7C 05 30 38 */	and r5, r0, r6
/* 8062EE04  4B DA A9 C9 */	bl mPlib_Load_PlayerTexAndPallet
/* 8062EE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062EE0C  7C 08 03 A6 */	mtlr r0
/* 8062EE10  38 21 00 10 */	addi r1, r1, 0x10
/* 8062EE14  4E 80 00 20 */	blr 
