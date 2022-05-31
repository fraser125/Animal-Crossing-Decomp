lbl_80582B40:
/* 80582B40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80582B44  7C 08 02 A6 */	mflr r0
/* 80582B48  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80582B4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80582B50  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80582B54  3C 63 00 02 */	addis r3, r3, 2
/* 80582B58  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80582B5C  3B E0 00 00 */	li r31, 0
/* 80582B60  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 80582B64  4B E3 0A 55 */	bl mHS_get_arrange_idx
/* 80582B68  1C 83 26 B0 */	mulli r4, r3, 0x26b0
/* 80582B6C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80582B70  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 80582B74  7C 60 22 14 */	add r3, r0, r4
/* 80582B78  3C 63 00 01 */	addis r3, r3, 1
/* 80582B7C  88 03 9D 12 */	lbz r0, -0x62ee(r3)
/* 80582B80  38 63 9C E8 */	addi r3, r3, -25368
/* 80582B84  54 00 DF 7E */	rlwinm r0, r0, 0x1b, 0x1d, 0x1f
/* 80582B88  2C 00 00 01 */	cmpwi r0, 1
/* 80582B8C  41 82 00 28 */	beq lbl_80582BB4
/* 80582B90  40 80 00 10 */	bge lbl_80582BA0
/* 80582B94  2C 00 00 00 */	cmpwi r0, 0
/* 80582B98  40 80 00 14 */	bge lbl_80582BAC
/* 80582B9C  48 00 00 64 */	b lbl_80582C00
lbl_80582BA0:
/* 80582BA0  2C 00 00 03 */	cmpwi r0, 3
/* 80582BA4  40 80 00 5C */	bge lbl_80582C00
/* 80582BA8  48 00 00 28 */	b lbl_80582BD0
lbl_80582BAC:
/* 80582BAC  3B E0 00 00 */	li r31, 0
/* 80582BB0  48 00 00 50 */	b lbl_80582C00
lbl_80582BB4:
/* 80582BB4  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80582BB8  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80582BBC  40 82 00 0C */	bne lbl_80582BC8
/* 80582BC0  3B E0 00 04 */	li r31, 4
/* 80582BC4  48 00 00 3C */	b lbl_80582C00
lbl_80582BC8:
/* 80582BC8  3B E0 00 CD */	li r31, 0xcd
/* 80582BCC  48 00 00 34 */	b lbl_80582C00
lbl_80582BD0:
/* 80582BD0  88 03 00 2B */	lbz r0, 0x2b(r3)
/* 80582BD4  54 00 E7 FE */	rlwinm r0, r0, 0x1c, 0x1f, 0x1f
/* 80582BD8  28 00 00 01 */	cmplwi r0, 1
/* 80582BDC  40 82 00 0C */	bne lbl_80582BE8
/* 80582BE0  3B E0 00 D4 */	li r31, 0xd4
/* 80582BE4  48 00 00 1C */	b lbl_80582C00
lbl_80582BE8:
/* 80582BE8  88 03 00 24 */	lbz r0, 0x24(r3)
/* 80582BEC  54 00 E7 FF */	rlwinm. r0, r0, 0x1c, 0x1f, 0x1f
/* 80582BF0  40 82 00 0C */	bne lbl_80582BFC
/* 80582BF4  3B E0 00 D0 */	li r31, 0xd0
/* 80582BF8  48 00 00 08 */	b lbl_80582C00
lbl_80582BFC:
/* 80582BFC  3B E0 00 D1 */	li r31, 0xd1
lbl_80582C00:
/* 80582C00  7F E3 FB 78 */	mr r3, r31
/* 80582C04  4B FF F1 85 */	bl aNSC_get_msg_no
/* 80582C08  4B E1 59 0D */	bl mDemo_Set_msg_num
/* 80582C0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80582C10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80582C14  7C 08 03 A6 */	mtlr r0
/* 80582C18  38 21 00 10 */	addi r1, r1, 0x10
/* 80582C1C  4E 80 00 20 */	blr 
