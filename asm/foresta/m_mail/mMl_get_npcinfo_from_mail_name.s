lbl_803BCA64:
/* 803BCA64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BCA68  7C 08 02 A6 */	mflr r0
/* 803BCA6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BCA70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BCA74  7C 9F 23 78 */	mr r31, r4
/* 803BCA78  93 C1 00 08 */	stw r30, 8(r1)
/* 803BCA7C  7C 7E 1B 78 */	mr r30, r3
/* 803BCA80  38 60 00 00 */	li r3, 0
/* 803BCA84  88 04 00 14 */	lbz r0, 0x14(r4)
/* 803BCA88  28 00 00 01 */	cmplwi r0, 1
/* 803BCA8C  40 82 00 40 */	bne lbl_803BCACC
/* 803BCA90  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 803BCA94  38 7E 00 04 */	addi r3, r30, 4
/* 803BCA98  38 9F 00 08 */	addi r4, r31, 8
/* 803BCA9C  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 803BCAA0  60 00 E0 00 */	ori r0, r0, 0xe000
/* 803BCAA4  B0 1E 00 00 */	sth r0, 0(r30)
/* 803BCAA8  A0 1F 00 12 */	lhz r0, 0x12(r31)
/* 803BCAAC  B0 1E 00 02 */	sth r0, 2(r30)
/* 803BCAB0  4B FF 6E 41 */	bl mLd_CopyLandName
/* 803BCAB4  A0 1F 00 10 */	lhz r0, 0x10(r31)
/* 803BCAB8  98 1E 00 0C */	stb r0, 0xc(r30)
/* 803BCABC  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803BCAC0  48 01 23 9D */	bl mNpc_GetLooks
/* 803BCAC4  98 7E 00 0D */	stb r3, 0xd(r30)
/* 803BCAC8  38 60 00 01 */	li r3, 1
lbl_803BCACC:
/* 803BCACC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BCAD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BCAD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803BCAD8  7C 08 03 A6 */	mtlr r0
/* 803BCADC  38 21 00 10 */	addi r1, r1, 0x10
/* 803BCAE0  4E 80 00 20 */	blr 
