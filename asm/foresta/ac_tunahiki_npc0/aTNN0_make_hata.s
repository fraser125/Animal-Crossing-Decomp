lbl_8058E8A8:
/* 8058E8A8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E8AC  7C 08 02 A6 */	mflr r0
/* 8058E8B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E8B4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E8B8  7C 7F 1B 78 */	mr r31, r3
/* 8058E8BC  80 03 08 A0 */	lwz r0, 0x8a0(r3)
/* 8058E8C0  28 00 00 00 */	cmplwi r0, 0
/* 8058E8C4  40 82 00 44 */	bne lbl_8058E908
/* 8058E8C8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8058E8CC  7F E5 FB 78 */	mr r5, r31
/* 8058E8D0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8058E8D4  7C 86 23 78 */	mr r6, r4
/* 8058E8D8  3C 83 00 02 */	addis r4, r3, 2
/* 8058E8DC  38 60 00 2D */	li r3, 0x2d
/* 8058E8E0  81 24 60 A0 */	lwz r9, 0x60a0(r4)
/* 8058E8E4  38 80 00 04 */	li r4, 4
/* 8058E8E8  38 E0 FF FF */	li r7, -1
/* 8058E8EC  39 00 00 00 */	li r8, 0
/* 8058E8F0  81 89 00 00 */	lwz r12, 0(r9)
/* 8058E8F4  7D 89 03 A6 */	mtctr r12
/* 8058E8F8  4E 80 04 21 */	bctrl 
/* 8058E8FC  28 03 00 00 */	cmplwi r3, 0
/* 8058E900  41 82 00 08 */	beq lbl_8058E908
/* 8058E904  90 7F 08 A0 */	stw r3, 0x8a0(r31)
lbl_8058E908:
/* 8058E908  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E90C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E910  7C 08 03 A6 */	mtlr r0
/* 8058E914  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E918  4E 80 00 20 */	blr 
