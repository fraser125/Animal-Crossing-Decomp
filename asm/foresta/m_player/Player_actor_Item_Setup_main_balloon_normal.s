lbl_804E2A60:
/* 804E2A60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E2A64  7C 08 02 A6 */	mflr r0
/* 804E2A68  2C 05 00 37 */	cmpwi r5, 0x37
/* 804E2A6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E2A70  38 00 00 00 */	li r0, 0
/* 804E2A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E2A78  7C 7F 1B 78 */	mr r31, r3
/* 804E2A7C  41 80 00 10 */	blt lbl_804E2A8C
/* 804E2A80  2C 05 00 3F */	cmpwi r5, 0x3f
/* 804E2A84  40 80 00 08 */	bge lbl_804E2A8C
/* 804E2A88  38 00 00 01 */	li r0, 1
lbl_804E2A8C:
/* 804E2A8C  2C 00 00 00 */	cmpwi r0, 0
/* 804E2A90  40 82 00 64 */	bne lbl_804E2AF4
/* 804E2A94  7F E3 FB 78 */	mr r3, r31
/* 804E2A98  4B FF FF B9 */	bl func_804E2A50
/* 804E2A9C  3C 80 80 66 */	lis r4, ZeroSVec@ha /* 0x8065F05C@ha */
/* 804E2AA0  B0 7F 11 78 */	sth r3, 0x1178(r31)
/* 804E2AA4  38 A4 F0 5C */	addi r5, r4, ZeroSVec@l /* 0x8065F05C@l */
/* 804E2AA8  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E2AAC  80 05 00 00 */	lwz r0, 0(r5)
/* 804E2AB0  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804E2AB4  3C 60 80 65 */	lis r3, lit_6484@ha /* 0x80648090@ha */
/* 804E2AB8  C0 24 00 00 */	lfs f1, 0(r4)
/* 804E2ABC  90 1F 11 7A */	stw r0, 0x117a(r31)
/* 804E2AC0  38 80 00 01 */	li r4, 1
/* 804E2AC4  C0 03 80 90 */	lfs f0, lit_6484@l(r3)  /* 0x80648090@l */
/* 804E2AC8  38 00 00 00 */	li r0, 0
/* 804E2ACC  A0 65 00 04 */	lhz r3, 4(r5)
/* 804E2AD0  B0 7F 11 7E */	sth r3, 0x117e(r31)
/* 804E2AD4  C0 5F 0A 20 */	lfs f2, 0xa20(r31)
/* 804E2AD8  D0 5F 11 84 */	stfs f2, 0x1184(r31)
/* 804E2ADC  D0 3F 11 88 */	stfs f1, 0x1188(r31)
/* 804E2AE0  90 9F 11 8C */	stw r4, 0x118c(r31)
/* 804E2AE4  D0 1F 11 80 */	stfs f0, 0x1180(r31)
/* 804E2AE8  B0 1F 11 90 */	sth r0, 0x1190(r31)
/* 804E2AEC  B0 1F 11 92 */	sth r0, 0x1192(r31)
/* 804E2AF0  D0 3F 11 94 */	stfs f1, 0x1194(r31)
lbl_804E2AF4:
/* 804E2AF4  C0 1F 11 84 */	lfs f0, 0x1184(r31)
/* 804E2AF8  D0 1F 0A 28 */	stfs f0, 0xa28(r31)
/* 804E2AFC  C0 1F 11 88 */	lfs f0, 0x1188(r31)
/* 804E2B00  D0 1F 0A 24 */	stfs f0, 0xa24(r31)
/* 804E2B04  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E2B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E2B0C  7C 08 03 A6 */	mtlr r0
/* 804E2B10  38 21 00 10 */	addi r1, r1, 0x10
/* 804E2B14  4E 80 00 20 */	blr 
