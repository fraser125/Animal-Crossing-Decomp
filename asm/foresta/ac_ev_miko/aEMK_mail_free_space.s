lbl_80521EF4:
/* 80521EF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80521EF8  7C 08 02 A6 */	mflr r0
/* 80521EFC  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80521F00  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80521F04  90 01 00 14 */	stw r0, 0x14(r1)
/* 80521F08  3C 63 00 02 */	addis r3, r3, 2
/* 80521F0C  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 80521F10  28 03 00 00 */	cmplwi r3, 0
/* 80521F14  41 82 00 20 */	beq lbl_80521F34
/* 80521F18  38 63 04 E0 */	addi r3, r3, 0x4e0
/* 80521F1C  38 80 00 0A */	li r4, 0xa
/* 80521F20  4B E9 A9 85 */	bl mMl_chk_mail_free_space
/* 80521F24  2C 03 FF FF */	cmpwi r3, -1
/* 80521F28  41 82 00 0C */	beq lbl_80521F34
/* 80521F2C  38 60 00 01 */	li r3, 1
/* 80521F30  48 00 00 08 */	b lbl_80521F38
lbl_80521F34:
/* 80521F34  38 60 00 00 */	li r3, 0
lbl_80521F38:
/* 80521F38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80521F3C  7C 08 03 A6 */	mtlr r0
/* 80521F40  38 21 00 10 */	addi r1, r1, 0x10
/* 80521F44  4E 80 00 20 */	blr 
