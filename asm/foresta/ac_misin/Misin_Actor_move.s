lbl_8042E9A8:
/* 8042E9A8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8042E9AC  7C 08 02 A6 */	mflr r0
/* 8042E9B0  90 01 00 24 */	stw r0, 0x24(r1)
/* 8042E9B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8042E9B8  4B C6 C5 1D */	bl func_8009AED4
/* 8042E9BC  7C 7D 1B 78 */	mr r29, r3
/* 8042E9C0  7C 9E 23 78 */	mr r30, r4
/* 8042E9C4  3B FD 01 74 */	addi r31, r29, 0x174
/* 8042E9C8  7F E3 FB 78 */	mr r3, r31
/* 8042E9CC  4B FF FC 05 */	bl aMSN_MoveDustcloth
/* 8042E9D0  7F E4 FB 78 */	mr r4, r31
/* 8042E9D4  7F C5 F3 78 */	mr r5, r30
/* 8042E9D8  38 7D 01 A8 */	addi r3, r29, 0x1a8
/* 8042E9DC  4B FF FE C9 */	bl aMSN_MoveMisin
/* 8042E9E0  39 61 00 20 */	addi r11, r1, 0x20
/* 8042E9E4  4B C6 C5 3D */	bl func_8009AF20
/* 8042E9E8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8042E9EC  7C 08 03 A6 */	mtlr r0
/* 8042E9F0  38 21 00 20 */	addi r1, r1, 0x20
/* 8042E9F4  4E 80 00 20 */	blr 
