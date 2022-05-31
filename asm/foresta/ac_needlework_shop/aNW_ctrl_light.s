lbl_805B6BDC:
/* 805B6BDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805B6BE0  7C 08 02 A6 */	mflr r0
/* 805B6BE4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 805B6BE8  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FD20@ha */
/* 805B6BEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805B6BF0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 805B6BF4  3C 84 00 02 */	addis r4, r4, 2
/* 805B6BF8  38 03 FD 20 */	addi r0, r3, 0xFD20 /* 0x0000FD20@l */
/* 805B6BFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805B6C00  3B E0 00 00 */	li r31, 0
/* 805B6C04  80 64 61 1C */	lwz r3, 0x611c(r4)
/* 805B6C08  7C 03 00 00 */	cmpw r3, r0
/* 805B6C0C  40 80 00 0C */	bge lbl_805B6C18
/* 805B6C10  2C 03 46 50 */	cmpwi r3, 0x4650
/* 805B6C14  40 80 00 14 */	bge lbl_805B6C28
lbl_805B6C18:
/* 805B6C18  4B FF FF 99 */	bl aNW_check_opend
/* 805B6C1C  2C 03 00 00 */	cmpwi r3, 0
/* 805B6C20  41 82 00 08 */	beq lbl_805B6C28
/* 805B6C24  3B E0 00 01 */	li r31, 1
lbl_805B6C28:
/* 805B6C28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805B6C2C  7F E3 FB 78 */	mr r3, r31
/* 805B6C30  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805B6C34  7C 08 03 A6 */	mtlr r0
/* 805B6C38  38 21 00 10 */	addi r1, r1, 0x10
/* 805B6C3C  4E 80 00 20 */	blr 
