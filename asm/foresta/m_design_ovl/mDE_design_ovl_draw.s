lbl_805D7634:
/* 805D7634  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D7638  7C 08 02 A6 */	mflr r0
/* 805D763C  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D7640  39 61 00 20 */	addi r11, r1, 0x20
/* 805D7644  4B AC 38 91 */	bl func_8009AED4
/* 805D7648  7C 7D 1B 78 */	mr r29, r3
/* 805D764C  7C 9E 23 78 */	mr r30, r4
/* 805D7650  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D7654  3B E5 07 5C */	addi r31, r5, 0x75c
/* 805D7658  81 85 07 6C */	lwz r12, 0x76c(r5)
/* 805D765C  7D 89 03 A6 */	mtctr r12
/* 805D7660  4E 80 04 21 */	bctrl 
/* 805D7664  7F A3 EB 78 */	mr r3, r29
/* 805D7668  7F C4 F3 78 */	mr r4, r30
/* 805D766C  7F E5 FB 78 */	mr r5, r31
/* 805D7670  4B FF FF 49 */	bl mDE_set_frame_dl
/* 805D7674  39 61 00 20 */	addi r11, r1, 0x20
/* 805D7678  4B AC 38 A9 */	bl func_8009AF20
/* 805D767C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D7680  7C 08 03 A6 */	mtlr r0
/* 805D7684  38 21 00 20 */	addi r1, r1, 0x20
/* 805D7688  4E 80 00 20 */	blr 
