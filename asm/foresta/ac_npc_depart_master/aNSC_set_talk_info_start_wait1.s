lbl_8054F3B4:
/* 8054F3B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054F3B8  7C 08 02 A6 */	mflr r0
/* 8054F3BC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054F3C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054F3C4  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8054F3C8  3C 63 00 02 */	addis r3, r3, 2
/* 8054F3CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054F3D0  3B E0 00 00 */	li r31, 0
/* 8054F3D4  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 8054F3D8  4B E6 41 E1 */	bl mHS_get_arrange_idx
/* 8054F3DC  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 8054F3E0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8054F3E4  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 8054F3E8  7C 60 22 14 */	add r3, r0, r4
/* 8054F3EC  3C 63 00 01 */	addis r3, r3, 1
/* 8054F3F0  88 03 9D 12 */	lbz r0, -0x62ee(r3)
/* 8054F3F4  38 63 9C E8 */	addi r3, r3, -25368
/* 8054F3F8  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 8054F3FC  2C 00 00 01 */	cmpwi r0, 1
/* 8054F400  41 82 00 28 */	beq lbl_8054F428
/* 8054F404  40 80 00 10 */	bge lbl_8054F414
/* 8054F408  2C 00 00 00 */	cmpwi r0, 0
/* 8054F40C  40 80 00 14 */	bge lbl_8054F420
/* 8054F410  48 00 00 64 */	b lbl_8054F474
lbl_8054F414:
/* 8054F414  2C 00 00 03 */	cmpwi r0, 3
/* 8054F418  40 80 00 5C */	bge lbl_8054F474
/* 8054F41C  48 00 00 28 */	b lbl_8054F444
lbl_8054F420:
/* 8054F420  3B E0 00 00 */	li r31, 0
/* 8054F424  48 00 00 50 */	b lbl_8054F474
lbl_8054F428:
/* 8054F428  88 03 00 24 */	lbz r0, 0x24(r3)
/* 8054F42C  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8054F430  40 82 00 0C */	bne lbl_8054F43C
/* 8054F434  3B E0 00 04 */	li r31, 4
/* 8054F438  48 00 00 3C */	b lbl_8054F474
lbl_8054F43C:
/* 8054F43C  3B E0 00 CD */	li r31, 0xcd
/* 8054F440  48 00 00 34 */	b lbl_8054F474
lbl_8054F444:
/* 8054F444  88 03 00 2B */	lbz r0, 0x2b(r3)
/* 8054F448  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 8054F44C  28 00 00 01 */	cmplwi r0, 1
/* 8054F450  40 82 00 0C */	bne lbl_8054F45C
/* 8054F454  3B E0 00 D4 */	li r31, 0xd4
/* 8054F458  48 00 00 1C */	b lbl_8054F474
lbl_8054F45C:
/* 8054F45C  88 03 00 24 */	lbz r0, 0x24(r3)
/* 8054F460  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 8054F464  40 82 00 0C */	bne lbl_8054F470
/* 8054F468  3B E0 00 D0 */	li r31, 0xd0
/* 8054F46C  48 00 00 08 */	b lbl_8054F474
lbl_8054F470:
/* 8054F470  3B E0 00 D1 */	li r31, 0xd1
lbl_8054F474:
/* 8054F474  7F E3 FB 78 */	mr r3, r31
/* 8054F478  4B FF F1 85 */	bl aNSC_get_msg_no
/* 8054F47C  4B E4 90 99 */	bl mDemo_Set_msg_num
/* 8054F480  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054F484  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054F488  7C 08 03 A6 */	mtlr r0
/* 8054F48C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054F490  4E 80 00 20 */	blr 
