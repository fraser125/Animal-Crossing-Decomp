lbl_8049BDCC:
/* 8049BDCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049BDD0  7C 08 02 A6 */	mflr r0
/* 8049BDD4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049BDD8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049BDDC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049BDE0  3C 63 00 02 */	addis r3, r3, 2
/* 8049BDE4  A8 03 66 6C */	lha r0, 0x666c(r3)
/* 8049BDE8  38 60 00 00 */	li r3, 0
/* 8049BDEC  2C 00 00 01 */	cmpwi r0, 1
/* 8049BDF0  41 82 00 18 */	beq lbl_8049BE08
/* 8049BDF4  7C A3 2B 78 */	mr r3, r5
/* 8049BDF8  7C C4 33 78 */	mr r4, r6
/* 8049BDFC  7C E5 3B 78 */	mr r5, r7
/* 8049BE00  7D 06 43 78 */	mr r6, r8
/* 8049BE04  4B FF F7 35 */	bl aSOI_ins_field_fg_check_get
lbl_8049BE08:
/* 8049BE08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049BE0C  7C 08 03 A6 */	mtlr r0
/* 8049BE10  38 21 00 10 */	addi r1, r1, 0x10
/* 8049BE14  4E 80 00 20 */	blr 
