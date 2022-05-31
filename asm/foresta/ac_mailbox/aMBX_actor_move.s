lbl_8042DABC:
/* 8042DABC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042DAC0  7C 08 02 A6 */	mflr r0
/* 8042DAC4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042DAC8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042DACC  7C 7F 1B 78 */	mr r31, r3
/* 8042DAD0  93 C1 00 08 */	stw r30, 8(r1)
/* 8042DAD4  7C 9E 23 78 */	mr r30, r4
/* 8042DAD8  4B FF F8 E1 */	bl func_8042D3B8
/* 8042DADC  81 9F 03 14 */	lwz r12, 0x314(r31)
/* 8042DAE0  7F E3 FB 78 */	mr r3, r31
/* 8042DAE4  7F C4 F3 78 */	mr r4, r30
/* 8042DAE8  7D 89 03 A6 */	mtctr r12
/* 8042DAEC  4E 80 04 21 */	bctrl 
/* 8042DAF0  7F E3 FB 78 */	mr r3, r31
/* 8042DAF4  4B FF FB C1 */	bl aMBX_setup_flag_se
/* 8042DAF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042DAFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042DB00  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042DB04  7C 08 03 A6 */	mtlr r0
/* 8042DB08  38 21 00 10 */	addi r1, r1, 0x10
/* 8042DB0C  4E 80 00 20 */	blr 
