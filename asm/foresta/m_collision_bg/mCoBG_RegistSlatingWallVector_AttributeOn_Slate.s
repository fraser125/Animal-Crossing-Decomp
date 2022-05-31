lbl_8038C238:
/* 8038C238  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8038C23C  7C 08 02 A6 */	mflr r0
/* 8038C240  90 01 00 24 */	stw r0, 0x24(r1)
/* 8038C244  39 61 00 20 */	addi r11, r1, 0x20
/* 8038C248  4B D0 EC 89 */	bl func_8009AED0
/* 8038C24C  7C 7C 1B 78 */	mr r28, r3
/* 8038C250  7C 9D 23 78 */	mr r29, r4
/* 8038C254  80 03 00 00 */	lwz r0, 0(r3)
/* 8038C258  7C BE 2B 78 */	mr r30, r5
/* 8038C25C  2C 00 00 80 */	cmpwi r0, 0x80
/* 8038C260  40 80 00 50 */	bge lbl_8038C2B0
/* 8038C264  80 7D 00 00 */	lwz r3, 0(r29)
/* 8038C268  3B FC 00 04 */	addi r31, r28, 4
/* 8038C26C  4B FF F3 41 */	bl mCoBG_SearchSlateDetail
/* 8038C270  80 1C 00 00 */	lwz r0, 0(r28)
/* 8038C274  7F A4 EB 78 */	mr r4, r29
/* 8038C278  7F C6 F3 78 */	mr r6, r30
/* 8038C27C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8038C280  7C BF 02 14 */	add r5, r31, r0
/* 8038C284  98 65 00 2A */	stb r3, 0x2a(r5)
/* 8038C288  80 1C 00 00 */	lwz r0, 0(r28)
/* 8038C28C  1C 00 00 34 */	mulli r0, r0, 0x34
/* 8038C290  7C 7F 02 14 */	add r3, r31, r0
/* 8038C294  88 A3 00 2A */	lbz r5, 0x2a(r3)
/* 8038C298  4B FF F6 09 */	bl mCoBG_GetUnitVecInf_SlatingWall
/* 8038C29C  38 00 00 00 */	li r0, 0
/* 8038C2A0  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 8038C2A4  80 7C 00 00 */	lwz r3, 0(r28)
/* 8038C2A8  38 03 00 01 */	addi r0, r3, 1
/* 8038C2AC  90 1C 00 00 */	stw r0, 0(r28)
lbl_8038C2B0:
/* 8038C2B0  39 61 00 20 */	addi r11, r1, 0x20
/* 8038C2B4  4B D0 EC 69 */	bl func_8009AF1C
/* 8038C2B8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8038C2BC  7C 08 03 A6 */	mtlr r0
/* 8038C2C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8038C2C4  4E 80 00 20 */	blr 
