lbl_80580E2C:
/* 80580E2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80580E30  7C 08 02 A6 */	mflr r0
/* 80580E34  90 01 00 14 */	stw r0, 0x14(r1)
/* 80580E38  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80580E3C  7C 7F 1B 78 */	mr r31, r3
/* 80580E40  38 60 00 08 */	li r3, 8
/* 80580E44  7F E4 FB 78 */	mr r4, r31
/* 80580E48  4B E1 94 1D */	bl mDemo_Check
/* 80580E4C  2C 03 00 01 */	cmpwi r3, 1
/* 80580E50  41 82 00 18 */	beq lbl_80580E68
/* 80580E54  7F E4 FB 78 */	mr r4, r31
/* 80580E58  38 60 00 07 */	li r3, 7
/* 80580E5C  4B E1 94 09 */	bl mDemo_Check
/* 80580E60  2C 03 00 01 */	cmpwi r3, 1
/* 80580E64  40 82 00 24 */	bne lbl_80580E88
lbl_80580E68:
/* 80580E68  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80580E6C  7F E3 FB 78 */	mr r3, r31
/* 80580E70  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80580E74  3C 84 00 02 */	addis r4, r4, 2
/* 80580E78  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 80580E7C  81 84 01 10 */	lwz r12, 0x110(r4)
/* 80580E80  7D 89 03 A6 */	mtctr r12
/* 80580E84  4E 80 04 21 */	bctrl 
lbl_80580E88:
/* 80580E88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80580E8C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80580E90  7C 08 03 A6 */	mtlr r0
/* 80580E94  38 21 00 10 */	addi r1, r1, 0x10
/* 80580E98  4E 80 00 20 */	blr 