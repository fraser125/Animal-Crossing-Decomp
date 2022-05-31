lbl_805EAA94:
/* 805EAA94  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EAA98  7C 08 02 A6 */	mflr r0
/* 805EAA9C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EAAA0  38 00 00 00 */	li r0, 0
/* 805EAAA4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EAAA8  7C 9F 23 78 */	mr r31, r4
/* 805EAAAC  93 C1 00 08 */	stw r30, 8(r1)
/* 805EAAB0  7C 7E 1B 78 */	mr r30, r3
/* 805EAAB4  98 03 00 00 */	stb r0, 0(r3)
/* 805EAAB8  98 03 00 02 */	stb r0, 2(r3)
/* 805EAABC  4B DD F7 01 */	bl mNtc_notice_write_num
/* 805EAAC0  98 7E 00 03 */	stb r3, 3(r30)
/* 805EAAC4  38 00 00 00 */	li r0, 0
/* 805EAAC8  88 7E 00 03 */	lbz r3, 3(r30)
/* 805EAACC  38 63 FF FF */	addi r3, r3, -1
/* 805EAAD0  98 7E 00 04 */	stb r3, 4(r30)
/* 805EAAD4  88 7E 00 04 */	lbz r3, 4(r30)
/* 805EAAD8  98 7E 00 05 */	stb r3, 5(r30)
/* 805EAADC  98 1E 00 06 */	stb r0, 6(r30)
/* 805EAAE0  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 805EAAE4  D0 1E 00 D0 */	stfs f0, 0xd0(r30)
/* 805EAAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EAAEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EAAF0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805EAAF4  7C 08 03 A6 */	mtlr r0
/* 805EAAF8  38 21 00 10 */	addi r1, r1, 0x10
/* 805EAAFC  4E 80 00 20 */	blr 
