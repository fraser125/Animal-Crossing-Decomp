lbl_80429D8C:
/* 80429D8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429D90  7C 08 02 A6 */	mflr r0
/* 80429D94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80429D98  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80429D9C  7C 7F 1B 78 */	mr r31, r3
/* 80429DA0  4B FF FE 49 */	bl aHN0_normal_wait_init
/* 80429DA4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 80429DA8  7F E3 FB 78 */	mr r3, r31
/* 80429DAC  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 80429DB0  38 80 00 05 */	li r4, 5
/* 80429DB4  3C C5 00 02 */	addis r6, r5, 2
/* 80429DB8  38 A0 00 00 */	li r5, 0
/* 80429DBC  80 C6 60 4C */	lwz r6, 0x604c(r6)
/* 80429DC0  81 86 01 14 */	lwz r12, 0x114(r6)
/* 80429DC4  7D 89 03 A6 */	mtctr r12
/* 80429DC8  4E 80 04 21 */	bctrl 
/* 80429DCC  38 00 00 78 */	li r0, 0x78
/* 80429DD0  B0 1F 09 9C */	sth r0, 0x99c(r31)
/* 80429DD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80429DD8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80429DDC  7C 08 03 A6 */	mtlr r0
/* 80429DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 80429DE4  4E 80 00 20 */	blr 
