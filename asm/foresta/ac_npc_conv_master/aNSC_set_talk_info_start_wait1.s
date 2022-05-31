lbl_80547A9C:
/* 80547A9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80547AA0  7C 08 02 A6 */	mflr r0
/* 80547AA4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80547AA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80547AAC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80547AB0  3C 63 00 02 */	addis r3, r3, 2
/* 80547AB4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80547AB8  3B E0 00 00 */	li r31, 0
/* 80547ABC  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80547AC0  4B E6 BA F9 */	bl mHS_get_arrange_idx
/* 80547AC4  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80547AC8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80547ACC  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80547AD0  7C 60 22 14 */	add r3, r0, r4
/* 80547AD4  3C 63 00 01 */	addis r3, r3, 1
/* 80547AD8  88 03 9D 12 */	lbz r0, -0x62ee(r3)
/* 80547ADC  38 63 9C E8 */	addi r3, r3, -25368
/* 80547AE0  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 80547AE4  2C 00 00 01 */	cmpwi r0, 1
/* 80547AE8  41 82 00 28 */	beq lbl_80547B10
/* 80547AEC  40 80 00 10 */	bge lbl_80547AFC
/* 80547AF0  2C 00 00 00 */	cmpwi r0, 0
/* 80547AF4  40 80 00 14 */	bge lbl_80547B08
/* 80547AF8  48 00 00 64 */	b lbl_80547B5C
lbl_80547AFC:
/* 80547AFC  2C 00 00 03 */	cmpwi r0, 3
/* 80547B00  40 80 00 5C */	bge lbl_80547B5C
/* 80547B04  48 00 00 28 */	b lbl_80547B2C
lbl_80547B08:
/* 80547B08  3B E0 00 00 */	li r31, 0
/* 80547B0C  48 00 00 50 */	b lbl_80547B5C
lbl_80547B10:
/* 80547B10  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80547B14  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80547B18  40 82 00 0C */	bne lbl_80547B24
/* 80547B1C  3B E0 00 04 */	li r31, 4
/* 80547B20  48 00 00 3C */	b lbl_80547B5C
lbl_80547B24:
/* 80547B24  3B E0 00 CD */	li r31, 0xcd
/* 80547B28  48 00 00 34 */	b lbl_80547B5C
lbl_80547B2C:
/* 80547B2C  88 03 00 2B */	lbz r0, 0x2b(r3)
/* 80547B30  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80547B34  28 00 00 01 */	cmplwi r0, 1
/* 80547B38  40 82 00 0C */	bne lbl_80547B44
/* 80547B3C  3B E0 00 D4 */	li r31, 0xd4
/* 80547B40  48 00 00 1C */	b lbl_80547B5C
lbl_80547B44:
/* 80547B44  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80547B48  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80547B4C  40 82 00 0C */	bne lbl_80547B58
/* 80547B50  3B E0 00 D0 */	li r31, 0xd0
/* 80547B54  48 00 00 08 */	b lbl_80547B5C
lbl_80547B58:
/* 80547B58  3B E0 00 D1 */	li r31, 0xd1
lbl_80547B5C:
/* 80547B5C  7F E3 FB 78 */	mr r3, r31
/* 80547B60  4B FF F1 85 */	bl aNSC_get_msg_no
/* 80547B64  4B E5 09 B1 */	bl mDemo_Set_msg_num
/* 80547B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80547B6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80547B70  7C 08 03 A6 */	mtlr r0
/* 80547B74  38 21 00 10 */	addi r1, r1, 0x10
/* 80547B78  4E 80 00 20 */	blr 
