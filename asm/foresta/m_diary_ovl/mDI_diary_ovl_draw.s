lbl_805D0FA0:
/* 805D0FA0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D0FA4  7C 08 02 A6 */	mflr r0
/* 805D0FA8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D0FAC  39 61 00 20 */	addi r11, r1, 0x20
/* 805D0FB0  4B AC 9F 25 */	bl func_8009AED4
/* 805D0FB4  7C 7D 1B 78 */	mr r29, r3
/* 805D0FB8  7C 9E 23 78 */	mr r30, r4
/* 805D0FBC  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805D0FC0  3B E5 07 EC */	addi r31, r5, 0x7ec
/* 805D0FC4  81 85 07 FC */	lwz r12, 0x7fc(r5)
/* 805D0FC8  7D 89 03 A6 */	mtctr r12
/* 805D0FCC  4E 80 04 21 */	bctrl 
/* 805D0FD0  7F A3 EB 78 */	mr r3, r29
/* 805D0FD4  7F C4 F3 78 */	mr r4, r30
/* 805D0FD8  7F E5 FB 78 */	mr r5, r31
/* 805D0FDC  4B FF FE A5 */	bl mDI_set_dl
/* 805D0FE0  39 61 00 20 */	addi r11, r1, 0x20
/* 805D0FE4  4B AC 9F 3D */	bl func_8009AF20
/* 805D0FE8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D0FEC  7C 08 03 A6 */	mtlr r0
/* 805D0FF0  38 21 00 20 */	addi r1, r1, 0x20
/* 805D0FF4  4E 80 00 20 */	blr 
