lbl_805BC918:
/* 805BC918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BC91C  7C 08 02 A6 */	mflr r0
/* 805BC920  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BC924  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805BC928  7C 7F 1B 78 */	mr r31, r3
/* 805BC92C  48 00 04 C1 */	bl aSTR_init_clip_area
/* 805BC930  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805BC934  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805BC938  3C 63 00 03 */	addis r3, r3, 3
/* 805BC93C  A0 03 85 3E */	lhz r0, -0x7ac2(r3)
/* 805BC940  B0 1F 01 78 */	sth r0, 0x178(r31)
/* 805BC944  88 03 85 35 */	lbz r0, -0x7acb(r3)
/* 805BC948  98 1F 01 7A */	stb r0, 0x17a(r31)
/* 805BC94C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805BC950  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BC954  7C 08 03 A6 */	mtlr r0
/* 805BC958  38 21 00 10 */	addi r1, r1, 0x10
/* 805BC95C  4E 80 00 20 */	blr 
