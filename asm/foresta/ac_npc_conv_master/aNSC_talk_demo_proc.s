lbl_80545D88:
/* 80545D88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545D8C  7C 08 02 A6 */	mflr r0
/* 80545D90  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545D94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80545D98  7C 7F 1B 78 */	mr r31, r3
/* 80545D9C  38 60 00 08 */	li r3, 8
/* 80545DA0  7F E4 FB 78 */	mr r4, r31
/* 80545DA4  4B E5 44 C1 */	bl mDemo_Check
/* 80545DA8  2C 03 00 01 */	cmpwi r3, 1
/* 80545DAC  41 82 00 18 */	beq lbl_80545DC4
/* 80545DB0  7F E4 FB 78 */	mr r4, r31
/* 80545DB4  38 60 00 07 */	li r3, 7
/* 80545DB8  4B E5 44 AD */	bl mDemo_Check
/* 80545DBC  2C 03 00 01 */	cmpwi r3, 1
/* 80545DC0  40 82 00 24 */	bne lbl_80545DE4
lbl_80545DC4:
/* 80545DC4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80545DC8  7F E3 FB 78 */	mr r3, r31
/* 80545DCC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80545DD0  3C 84 00 02 */	addis r4, r4, 2
/* 80545DD4  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 80545DD8  81 84 01 10 */	lwz r12, 0x110(r4)
/* 80545DDC  7D 89 03 A6 */	mtctr r12
/* 80545DE0  4E 80 04 21 */	bctrl 
lbl_80545DE4:
/* 80545DE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80545DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80545DEC  7C 08 03 A6 */	mtlr r0
/* 80545DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80545DF4  4E 80 00 20 */	blr 
