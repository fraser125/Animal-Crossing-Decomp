lbl_803CEE84:
/* 803CEE84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CEE88  7C 08 02 A6 */	mflr r0
/* 803CEE8C  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803CEE90  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CEE94  54 80 A7 3E */	rlwinm r0, r4, 0x14, 0x1c, 0x1f
/* 803CEE98  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 803CEE9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CEEA0  3F E7 00 01 */	addis r31, r7, 1
/* 803CEEA4  2C 00 00 0E */	cmpwi r0, 0xe
/* 803CEEA8  93 C1 00 08 */	stw r30, 8(r1)
/* 803CEEAC  7C 7E 1B 78 */	mr r30, r3
/* 803CEEB0  3B FF 91 20 */	addi r31, r31, -28384
/* 803CEEB4  40 82 00 40 */	bne lbl_803CEEF4
/* 803CEEB8  B0 9E 00 00 */	sth r4, 0(r30)
/* 803CEEBC  38 7E 08 9D */	addi r3, r30, 0x89d
/* 803CEEC0  38 80 00 0A */	li r4, 0xa
/* 803CEEC4  98 BE 00 0D */	stb r5, 0xd(r30)
/* 803CEEC8  A0 06 00 00 */	lhz r0, 0(r6)
/* 803CEECC  B0 1E 08 E4 */	sth r0, 0x8e4(r30)
/* 803CEED0  88 06 00 04 */	lbz r0, 4(r6)
/* 803CEED4  98 1E 08 EC */	stb r0, 0x8ec(r30)
/* 803CEED8  A0 A6 00 02 */	lhz r5, 2(r6)
/* 803CEEDC  48 01 FD F1 */	bl mString_Load_StringFromRom
/* 803CEEE0  A0 1F 00 0A */	lhz r0, 0xa(r31)
/* 803CEEE4  7F E4 FB 78 */	mr r4, r31
/* 803CEEE8  38 7E 00 04 */	addi r3, r30, 4
/* 803CEEEC  B0 1E 00 02 */	sth r0, 2(r30)
/* 803CEEF0  4B FE 4A 01 */	bl mLd_CopyLandName
lbl_803CEEF4:
/* 803CEEF4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CEEF8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CEEFC  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CEF00  7C 08 03 A6 */	mtlr r0
/* 803CEF04  38 21 00 10 */	addi r1, r1, 0x10
/* 803CEF08  4E 80 00 20 */	blr 
