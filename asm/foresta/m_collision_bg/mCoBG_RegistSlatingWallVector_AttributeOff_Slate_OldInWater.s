lbl_8038C370:
/* 8038C370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038C374  7C 08 02 A6 */	mflr r0
/* 8038C378  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038C37C  39 61 00 20 */	addi r11, r1, 0x20
/* 8038C380  4B D0 EB 51 */	bl func_8009AED0
/* 8038C384  7C 9D 23 78 */	mr r29, r4
/* 8038C388  7C 7C 1B 78 */	mr r28, r3
/* 8038C38C  88 04 00 2C */	lbz r0, 0x2c(r4)
/* 8038C390  7C BE 2B 78 */	mr r30, r5
/* 8038C394  7C DF 33 78 */	mr r31, r6
/* 8038C398  28 00 00 1B */	cmplwi r0, 0x1b
/* 8038C39C  41 80 00 0C */	blt lbl_8038C3A8
/* 8038C3A0  28 00 00 23 */	cmplwi r0, 0x23
/* 8038C3A4  40 81 00 38 */	ble lbl_8038C3DC
lbl_8038C3A8:
/* 8038C3A8  80 7D 00 00 */	lwz r3, 0(r29)
/* 8038C3AC  4B FF F2 01 */	bl mCoBG_SearchSlateDetail
/* 8038C3B0  98 7C 00 2A */	stb r3, 0x2a(r28)
/* 8038C3B4  7F 83 E3 78 */	mr r3, r28
/* 8038C3B8  7F A4 EB 78 */	mr r4, r29
/* 8038C3BC  7F E6 FB 78 */	mr r6, r31
/* 8038C3C0  88 BC 00 2A */	lbz r5, 0x2a(r28)
/* 8038C3C4  4B FF F4 DD */	bl mCoBG_GetUnitVecInf_SlatingWall
/* 8038C3C8  38 00 00 00 */	li r0, 0
/* 8038C3CC  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 8038C3D0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8038C3D4  38 03 00 01 */	addi r0, r3, 1
/* 8038C3D8  90 1E 00 00 */	stw r0, 0(r30)
lbl_8038C3DC:
/* 8038C3DC  39 61 00 20 */	addi r11, r1, 0x20
/* 8038C3E0  4B D0 EB 3D */	bl func_8009AF1C
/* 8038C3E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038C3E8  7C 08 03 A6 */	mtlr r0
/* 8038C3EC  38 21 00 20 */	addi r1, r1, 0x20
/* 8038C3F0  4E 80 00 20 */	blr 
