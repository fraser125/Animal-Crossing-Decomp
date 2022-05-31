lbl_8042C780:
/* 8042C780  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042C784  7C 08 02 A6 */	mflr r0
/* 8042C788  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042C78C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042C790  7C 9F 23 78 */	mr r31, r4
/* 8042C794  93 C1 00 08 */	stw r30, 8(r1)
/* 8042C798  7C 7E 1B 78 */	mr r30, r3
/* 8042C79C  38 7E 03 10 */	addi r3, r30, 0x310
/* 8042C7A0  4B FF FD D9 */	bl aLS_PoleDraw
/* 8042C7A4  7F E4 FB 78 */	mr r4, r31
/* 8042C7A8  38 7E 01 78 */	addi r3, r30, 0x178
/* 8042C7AC  4B FF FE E1 */	bl aLS_SwitchDraw
/* 8042C7B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042C7B4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042C7B8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042C7BC  7C 08 03 A6 */	mtlr r0
/* 8042C7C0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042C7C4  4E 80 00 20 */	blr 
