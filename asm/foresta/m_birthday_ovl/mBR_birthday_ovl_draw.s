lbl_805C4C48:
/* 805C4C48  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C4C4C  7C 08 02 A6 */	mflr r0
/* 805C4C50  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C4C54  39 61 00 20 */	addi r11, r1, 0x20
/* 805C4C58  4B AD 62 7D */	bl func_8009AED4
/* 805C4C5C  7C 7D 1B 78 */	mr r29, r3
/* 805C4C60  7C 9E 23 78 */	mr r30, r4
/* 805C4C64  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C4C68  3B E5 02 DC */	addi r31, r5, 0x2dc
/* 805C4C6C  81 85 02 EC */	lwz r12, 0x2ec(r5)
/* 805C4C70  7D 89 03 A6 */	mtctr r12
/* 805C4C74  4E 80 04 21 */	bctrl 
/* 805C4C78  7F A3 EB 78 */	mr r3, r29
/* 805C4C7C  7F E4 FB 78 */	mr r4, r31
/* 805C4C80  7F C5 F3 78 */	mr r5, r30
/* 805C4C84  4B FF FC 81 */	bl mBR_set_dl
/* 805C4C88  39 61 00 20 */	addi r11, r1, 0x20
/* 805C4C8C  4B AD 62 95 */	bl func_8009AF20
/* 805C4C90  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C4C94  7C 08 03 A6 */	mtlr r0
/* 805C4C98  38 21 00 20 */	addi r1, r1, 0x20
/* 805C4C9C  4E 80 00 20 */	blr 
