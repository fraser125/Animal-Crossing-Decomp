lbl_80533E7C:
/* 80533E7C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80533E80  7C 08 02 A6 */	mflr r0
/* 80533E84  90 01 00 14 */	stw r0, 0x14(r1)
/* 80533E88  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80533E8C  7C 7F 1B 78 */	mr r31, r3
/* 80533E90  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80533E94  2C 00 00 01 */	cmpwi r0, 1
/* 80533E98  40 82 00 3C */	bne lbl_80533ED4
/* 80533E9C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80533EA0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 80533EA4  3C 84 00 02 */	addis r4, r4, 2
/* 80533EA8  80 84 60 94 */	lwz r4, 0x6094(r4)
/* 80533EAC  80 04 00 10 */	lwz r0, 0x10(r4)
/* 80533EB0  7C 00 F8 40 */	cmplw r0, r31
/* 80533EB4  40 82 00 20 */	bne lbl_80533ED4
/* 80533EB8  81 84 00 08 */	lwz r12, 8(r4)
/* 80533EBC  38 80 00 02 */	li r4, 2
/* 80533EC0  7D 89 03 A6 */	mtctr r12
/* 80533EC4  4E 80 04 21 */	bctrl 
/* 80533EC8  7F E3 FB 78 */	mr r3, r31
/* 80533ECC  38 80 00 03 */	li r4, 3
/* 80533ED0  4B FF FE 35 */	bl func_80533D04
lbl_80533ED4:
/* 80533ED4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80533ED8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80533EDC  7C 08 03 A6 */	mtlr r0
/* 80533EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80533EE4  4E 80 00 20 */	blr 
