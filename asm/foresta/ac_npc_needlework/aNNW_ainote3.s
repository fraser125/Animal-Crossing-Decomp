lbl_80565AB8:
/* 80565AB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80565ABC  7C 08 02 A6 */	mflr r0
/* 80565AC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80565AC4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80565AC8  7C 7F 1B 78 */	mr r31, r3
/* 80565ACC  88 03 09 BA */	lbz r0, 0x9ba(r3)
/* 80565AD0  2C 00 00 01 */	cmpwi r0, 1
/* 80565AD4  41 82 00 30 */	beq lbl_80565B04
/* 80565AD8  40 80 00 10 */	bge lbl_80565AE8
/* 80565ADC  2C 00 00 00 */	cmpwi r0, 0
/* 80565AE0  40 80 00 10 */	bge lbl_80565AF0
/* 80565AE4  48 00 00 20 */	b lbl_80565B04
lbl_80565AE8:
/* 80565AE8  2C 00 00 03 */	cmpwi r0, 3
/* 80565AEC  40 80 00 18 */	bge lbl_80565B04
lbl_80565AF0:
/* 80565AF0  7F E3 FB 78 */	mr r3, r31
/* 80565AF4  38 A0 00 0E */	li r5, 0xe
/* 80565AF8  48 00 04 F5 */	bl aNNW_setup_think_proc
/* 80565AFC  38 00 00 00 */	li r0, 0
/* 80565B00  98 1F 09 BA */	stb r0, 0x9ba(r31)
lbl_80565B04:
/* 80565B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80565B08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80565B0C  7C 08 03 A6 */	mtlr r0
/* 80565B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80565B14  4E 80 00 20 */	blr 
