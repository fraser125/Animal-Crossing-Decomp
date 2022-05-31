lbl_80415F24:
/* 80415F24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80415F28  7C 08 02 A6 */	mflr r0
/* 80415F2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80415F30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80415F34  7C 7F 1B 78 */	mr r31, r3
/* 80415F38  4B FF FE FD */	bl Cottage_my_light_aim
/* 80415F3C  D0 3F 02 C8 */	stfs f1, 0x2c8(r31)
/* 80415F40  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80415F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80415F48  7C 08 03 A6 */	mtlr r0
/* 80415F4C  38 21 00 10 */	addi r1, r1, 0x10
/* 80415F50  4E 80 00 20 */	blr 
