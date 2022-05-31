lbl_805A8394:
/* 805A8394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A8398  7C 08 02 A6 */	mflr r0
/* 805A839C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A83A0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A83A4  7C 7F 1B 78 */	mr r31, r3
/* 805A83A8  93 C1 00 08 */	stw r30, 8(r1)
/* 805A83AC  7C 9E 23 78 */	mr r30, r4
/* 805A83B0  4B FF EE 3D */	bl aBT_anime_proc
/* 805A83B4  7F E3 FB 78 */	mr r3, r31
/* 805A83B8  4B FF F0 BD */	bl aBT_position_move
/* 805A83BC  7F E3 FB 78 */	mr r3, r31
/* 805A83C0  4B FF EE D1 */	bl aBT_roll_ctrl
/* 805A83C4  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805A83C8  7F E3 FB 78 */	mr r3, r31
/* 805A83CC  7F C4 F3 78 */	mr r4, r30
/* 805A83D0  7D 89 03 A6 */	mtctr r12
/* 805A83D4  4E 80 04 21 */	bctrl 
/* 805A83D8  7F E3 FB 78 */	mr r3, r31
/* 805A83DC  4B FF ED 15 */	bl func_805A70F0
/* 805A83E0  80 1F 02 B4 */	lwz r0, 0x2b4(r31)
/* 805A83E4  2C 00 FF FF */	cmpwi r0, -1
/* 805A83E8  40 82 00 0C */	bne lbl_805A83F4
/* 805A83EC  7F E3 FB 78 */	mr r3, r31
/* 805A83F0  4B DC C0 51 */	bl Actor_delete
lbl_805A83F4:
/* 805A83F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A83F8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A83FC  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A8400  7C 08 03 A6 */	mtlr r0
/* 805A8404  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8408  4E 80 00 20 */	blr 
