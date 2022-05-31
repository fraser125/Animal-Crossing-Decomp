lbl_8063F910:
/* 8063F910  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8063F914  7C 08 02 A6 */	mflr r0
/* 8063F918  90 01 00 34 */	stw r0, 0x34(r1)
/* 8063F91C  39 61 00 30 */	addi r11, r1, 0x30
/* 8063F920  4B A5 B5 B5 */	bl func_8009AED4
/* 8063F924  7C 7D 1B 78 */	mr r29, r3
/* 8063F928  7C BF 2B 78 */	mr r31, r5
/* 8063F92C  A8 03 00 3C */	lha r0, 0x3c(r3)
/* 8063F930  2C 00 00 0D */	cmpwi r0, 0xd
/* 8063F934  41 82 00 B4 */	beq lbl_8063F9E8
/* 8063F938  2C 00 00 0E */	cmpwi r0, 0xe
/* 8063F93C  41 82 00 AC */	beq lbl_8063F9E8
/* 8063F940  2C 00 00 0F */	cmpwi r0, 0xf
/* 8063F944  41 82 00 A4 */	beq lbl_8063F9E8
/* 8063F948  2C 00 00 0C */	cmpwi r0, 0xc
/* 8063F94C  41 82 00 9C */	beq lbl_8063F9E8
/* 8063F950  83 DF 20 90 */	lwz r30, 0x2090(r31)
/* 8063F954  38 BD 00 08 */	addi r5, r29, 8
/* 8063F958  38 80 00 54 */	li r4, 0x54
/* 8063F95C  4B FE E5 E9 */	bl sAdo_OngenPos
/* 8063F960  57 C0 07 7F */	clrlwi. r0, r30, 0x1d
/* 8063F964  40 82 00 84 */	bne lbl_8063F9E8
/* 8063F968  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 8063F96C  3C 60 80 65 */	lis r3, lit_7410@ha /* 0x8064D3DC@ha */
/* 8063F970  38 83 D3 DC */	addi r4, r3, lit_7410@l /* 0x8064D3DC@l */
/* 8063F974  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8063F978  90 01 00 18 */	stw r0, 0x18(r1)
/* 8063F97C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8063F980  83 DD 00 08 */	lwz r30, 8(r29)
/* 8063F984  3C 63 00 02 */	addis r3, r3, 2
/* 8063F988  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 8063F98C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8063F990  C0 04 00 00 */	lfs f0, 0(r4)
/* 8063F994  7F E7 FB 78 */	mr r7, r31
/* 8063F998  83 FD 00 10 */	lwz r31, 0x10(r29)
/* 8063F99C  38 81 00 08 */	addi r4, r1, 8
/* 8063F9A0  EC 01 00 2A */	fadds f0, f1, f0
/* 8063F9A4  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 8063F9A8  93 C1 00 08 */	stw r30, 8(r1)
/* 8063F9AC  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8063F9B0  38 60 00 71 */	li r3, 0x71
/* 8063F9B4  38 A0 00 01 */	li r5, 1
/* 8063F9B8  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8063F9BC  38 C0 00 00 */	li r6, 0
/* 8063F9C0  39 20 00 0A */	li r9, 0xa
/* 8063F9C4  39 40 00 00 */	li r10, 0
/* 8063F9C8  80 01 00 18 */	lwz r0, 0x18(r1)
/* 8063F9CC  93 E1 00 10 */	stw r31, 0x10(r1)
/* 8063F9D0  90 01 00 0C */	stw r0, 0xc(r1)
/* 8063F9D4  81 8B 00 00 */	lwz r12, 0(r11)
/* 8063F9D8  93 C1 00 14 */	stw r30, 0x14(r1)
/* 8063F9DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8063F9E0  7D 89 03 A6 */	mtctr r12
/* 8063F9E4  4E 80 04 21 */	bctrl 
lbl_8063F9E8:
/* 8063F9E8  39 61 00 30 */	addi r11, r1, 0x30
/* 8063F9EC  4B A5 B5 35 */	bl func_8009AF20
/* 8063F9F0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8063F9F4  7C 08 03 A6 */	mtlr r0
/* 8063F9F8  38 21 00 30 */	addi r1, r1, 0x30
/* 8063F9FC  4E 80 00 20 */	blr 
