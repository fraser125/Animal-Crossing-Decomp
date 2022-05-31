lbl_8054D6A0:
/* 8054D6A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054D6A4  7C 08 02 A6 */	mflr r0
/* 8054D6A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054D6AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054D6B0  7C 7F 1B 78 */	mr r31, r3
/* 8054D6B4  38 60 00 08 */	li r3, 8
/* 8054D6B8  7F E4 FB 78 */	mr r4, r31
/* 8054D6BC  4B E4 CB A9 */	bl mDemo_Check
/* 8054D6C0  2C 03 00 01 */	cmpwi r3, 1
/* 8054D6C4  41 82 00 18 */	beq lbl_8054D6DC
/* 8054D6C8  7F E4 FB 78 */	mr r4, r31
/* 8054D6CC  38 60 00 07 */	li r3, 7
/* 8054D6D0  4B E4 CB 95 */	bl mDemo_Check
/* 8054D6D4  2C 03 00 01 */	cmpwi r3, 1
/* 8054D6D8  40 82 00 24 */	bne lbl_8054D6FC
lbl_8054D6DC:
/* 8054D6DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8054D6E0  7F E3 FB 78 */	mr r3, r31
/* 8054D6E4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8054D6E8  3C 84 00 02 */	addis r4, r4, 2
/* 8054D6EC  80 84 60 4C */	lwz r4, 0x604c(r4)
/* 8054D6F0  81 84 01 10 */	lwz r12, 0x110(r4)
/* 8054D6F4  7D 89 03 A6 */	mtctr r12
/* 8054D6F8  4E 80 04 21 */	bctrl 
lbl_8054D6FC:
/* 8054D6FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054D700  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054D704  7C 08 03 A6 */	mtlr r0
/* 8054D708  38 21 00 10 */	addi r1, r1, 0x10
/* 8054D70C  4E 80 00 20 */	blr 
