lbl_80403C48:
/* 80403C48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80403C4C  7C 08 02 A6 */	mflr r0
/* 80403C50  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80403C54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80403C58  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80403C5C  3C 84 00 02 */	addis r4, r4, 2
/* 80403C60  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80403C64  7C 7F 1B 78 */	mr r31, r3
/* 80403C68  88 04 0F 12 */	lbz r0, 0xf12(r4)
/* 80403C6C  28 00 00 00 */	cmplwi r0, 0
/* 80403C70  41 82 00 10 */	beq lbl_80403C80
/* 80403C74  38 80 00 01 */	li r4, 1
/* 80403C78  4B FF FF 6D */	bl mVibInfo_set_force_stop
/* 80403C7C  48 00 00 0C */	b lbl_80403C88
lbl_80403C80:
/* 80403C80  38 80 00 01 */	li r4, 1
/* 80403C84  4B FF FF 71 */	bl mVibInfo_clr_force_stop
lbl_80403C88:
/* 80403C88  80 7F 01 18 */	lwz r3, 0x118(r31)
/* 80403C8C  2C 03 00 00 */	cmpwi r3, 0
/* 80403C90  41 82 00 18 */	beq lbl_80403CA8
/* 80403C94  80 1F 01 1C */	lwz r0, 0x11c(r31)
/* 80403C98  2C 00 00 00 */	cmpwi r0, 0
/* 80403C9C  40 82 00 0C */	bne lbl_80403CA8
/* 80403CA0  48 00 41 A1 */	bl padmgr_force_stop_ON
/* 80403CA4  48 00 00 1C */	b lbl_80403CC0
lbl_80403CA8:
/* 80403CA8  2C 03 00 00 */	cmpwi r3, 0
/* 80403CAC  40 82 00 14 */	bne lbl_80403CC0
/* 80403CB0  80 1F 01 1C */	lwz r0, 0x11c(r31)
/* 80403CB4  2C 00 00 00 */	cmpwi r0, 0
/* 80403CB8  41 82 00 08 */	beq lbl_80403CC0
/* 80403CBC  48 00 41 9D */	bl padmgr_force_stop_OFF
lbl_80403CC0:
/* 80403CC0  80 1F 01 18 */	lwz r0, 0x118(r31)
/* 80403CC4  90 1F 01 1C */	stw r0, 0x11c(r31)
/* 80403CC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80403CCC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80403CD0  7C 08 03 A6 */	mtlr r0
/* 80403CD4  38 21 00 10 */	addi r1, r1, 0x10
/* 80403CD8  4E 80 00 20 */	blr 
