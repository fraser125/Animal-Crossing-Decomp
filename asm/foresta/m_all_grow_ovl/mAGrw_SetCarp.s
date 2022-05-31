lbl_80512338:
/* 80512338  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8051233C  7C 08 02 A6 */	mflr r0
/* 80512340  90 01 00 44 */	stw r0, 0x44(r1)
/* 80512344  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80512348  4B FF F7 95 */	bl mAGrw_CheckCarpTime
/* 8051234C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80512350  2C 03 00 01 */	cmpwi r3, 1
/* 80512354  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80512358  3F E4 00 01 */	addis r31, r4, 1
/* 8051235C  3B FF 37 A8 */	addi r31, r31, 0x37a8
/* 80512360  41 82 00 0C */	beq lbl_8051236C
/* 80512364  2C 03 00 02 */	cmpwi r3, 2
/* 80512368  40 82 00 3C */	bne lbl_805123A4
lbl_8051236C:
/* 8051236C  2C 03 00 01 */	cmpwi r3, 1
/* 80512370  40 82 00 2C */	bne lbl_8051239C
/* 80512374  38 61 00 08 */	addi r3, r1, 8
/* 80512378  38 80 00 21 */	li r4, 0x21
/* 8051237C  4B B4 AC ED */	bl bzero
/* 80512380  7F E4 FB 78 */	mr r4, r31
/* 80512384  38 61 00 08 */	addi r3, r1, 8
/* 80512388  4B FF F8 35 */	bl mAGrw_SetCarpInfo
/* 8051238C  7F E4 FB 78 */	mr r4, r31
/* 80512390  38 61 00 08 */	addi r3, r1, 8
/* 80512394  4B FF FE C9 */	bl mAGrw_SetEnoughCarp
/* 80512398  48 00 00 0C */	b lbl_805123A4
lbl_8051239C:
/* 8051239C  7F E3 FB 78 */	mr r3, r31
/* 805123A0  4B FF FF 35 */	bl mAGrw_ClearAllCarp
lbl_805123A4:
/* 805123A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805123A8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805123AC  7C 08 03 A6 */	mtlr r0
/* 805123B0  38 21 00 40 */	addi r1, r1, 0x40
/* 805123B4  4E 80 00 20 */	blr 
