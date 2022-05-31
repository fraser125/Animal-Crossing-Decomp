lbl_8055F8D0:
/* 8055F8D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055F8D4  7C 08 02 A6 */	mflr r0
/* 8055F8D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055F8DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055F8E0  7C 7F 1B 78 */	mr r31, r3
/* 8055F8E4  38 60 00 08 */	li r3, 8
/* 8055F8E8  7F E4 FB 78 */	mr r4, r31
/* 8055F8EC  4B E3 A9 79 */	bl mDemo_Check
/* 8055F8F0  2C 03 00 01 */	cmpwi r3, 1
/* 8055F8F4  40 82 00 24 */	bne lbl_8055F918
/* 8055F8F8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8055F8FC  7F E3 FB 78 */	mr r3, r31
/* 8055F900  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8055F904  3C 84 00 02 */	addis r4, r4, 2
/* 8055F908  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 8055F90C  81 84 01 10 */	lwz r12, 0x110(r4)
/* 8055F910  7D 89 03 A6 */	mtctr r12
/* 8055F914  4E 80 04 21 */	bctrl 
lbl_8055F918:
/* 8055F918  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055F91C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055F920  7C 08 03 A6 */	mtlr r0
/* 8055F924  38 21 00 10 */	addi r1, r1, 0x10
/* 8055F928  4E 80 00 20 */	blr 
