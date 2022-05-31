lbl_8054DAB4:
/* 8054DAB4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054DAB8  7C 08 02 A6 */	mflr r0
/* 8054DABC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054DAC0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054DAC4  93 C1 00 08 */	stw r30, 8(r1)
/* 8054DAC8  7C 7E 1B 78 */	mr r30, r3
/* 8054DACC  4B E7 1B DD */	bl func_803BF6A8
/* 8054DAD0  38 BE 0A 07 */	addi r5, r30, 0xa07
/* 8054DAD4  7C 7F 1B 78 */	mr r31, r3
/* 8054DAD8  38 80 00 06 */	li r4, 6
/* 8054DADC  38 C0 00 08 */	li r6, 8
/* 8054DAE0  4B E7 21 75 */	bl mMsg_Set_free_str
/* 8054DAE4  7F E3 FB 78 */	mr r3, r31
/* 8054DAE8  38 BE 09 FF */	addi r5, r30, 0x9ff
/* 8054DAEC  38 80 00 07 */	li r4, 7
/* 8054DAF0  38 C0 00 08 */	li r6, 8
/* 8054DAF4  4B E7 21 61 */	bl mMsg_Set_free_str
/* 8054DAF8  A0 7E 09 F8 */	lhz r3, 0x9f8(r30)
/* 8054DAFC  38 80 00 02 */	li r4, 2
/* 8054DB00  4B FF FE 99 */	bl aNSC_set_item_name_str
/* 8054DB04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054DB08  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054DB0C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054DB10  7C 08 03 A6 */	mtlr r0
/* 8054DB14  38 21 00 10 */	addi r1, r1, 0x10
/* 8054DB18  4E 80 00 20 */	blr 
