lbl_8051AA1C:
/* 8051AA1C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051AA20  7C 08 02 A6 */	mflr r0
/* 8051AA24  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051AA28  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051AA2C  7C 7F 1B 78 */	mr r31, r3
/* 8051AA30  38 60 00 08 */	li r3, 8
/* 8051AA34  7F E4 FB 78 */	mr r4, r31
/* 8051AA38  4B E7 F8 2D */	bl mDemo_Check
/* 8051AA3C  2C 03 00 01 */	cmpwi r3, 1
/* 8051AA40  41 82 00 18 */	beq lbl_8051AA58
/* 8051AA44  7F E4 FB 78 */	mr r4, r31
/* 8051AA48  38 60 00 07 */	li r3, 7
/* 8051AA4C  4B E7 F8 19 */	bl mDemo_Check
/* 8051AA50  2C 03 00 01 */	cmpwi r3, 1
/* 8051AA54  40 82 00 24 */	bne lbl_8051AA78
lbl_8051AA58:
/* 8051AA58  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8051AA5C  7F E3 FB 78 */	mr r3, r31
/* 8051AA60  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8051AA64  3C 84 00 02 */	addis r4, r4, 2
/* 8051AA68  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 8051AA6C  81 84 01 10 */	lwz r12, 0x110(r4)
/* 8051AA70  7D 89 03 A6 */	mtctr r12
/* 8051AA74  4E 80 04 21 */	bctrl 
lbl_8051AA78:
/* 8051AA78  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051AA7C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051AA80  7C 08 03 A6 */	mtlr r0
/* 8051AA84  38 21 00 10 */	addi r1, r1, 0x10
/* 8051AA88  4E 80 00 20 */	blr 
