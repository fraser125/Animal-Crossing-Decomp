lbl_8051F784:
/* 8051F784  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8051F788  7C 08 02 A6 */	mflr r0
/* 8051F78C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8051F790  39 61 00 20 */	addi r11, r1, 0x20
/* 8051F794  4B B7 B7 41 */	bl func_8009AED4
/* 8051F798  7C 7D 1B 78 */	mr r29, r3
/* 8051F79C  38 00 00 00 */	li r0, 0
/* 8051F7A0  90 03 00 00 */	stw r0, 0(r3)
/* 8051F7A4  7C 9E 23 78 */	mr r30, r4
/* 8051F7A8  7C BF 2B 78 */	mr r31, r5
/* 8051F7AC  90 04 00 00 */	stw r0, 0(r4)
/* 8051F7B0  48 00 00 30 */	b lbl_8051F7E0
lbl_8051F7B4:
/* 8051F7B4  80 7D 00 00 */	lwz r3, 0(r29)
/* 8051F7B8  38 03 00 01 */	addi r0, r3, 1
/* 8051F7BC  90 1D 00 00 */	stw r0, 0(r29)
/* 8051F7C0  A0 7F 00 00 */	lhz r3, 0(r31)
/* 8051F7C4  4B EC 85 21 */	bl mSP_CollectCheck
/* 8051F7C8  2C 03 00 00 */	cmpwi r3, 0
/* 8051F7CC  40 82 00 10 */	bne lbl_8051F7DC
/* 8051F7D0  80 7E 00 00 */	lwz r3, 0(r30)
/* 8051F7D4  38 03 00 01 */	addi r0, r3, 1
/* 8051F7D8  90 1E 00 00 */	stw r0, 0(r30)
lbl_8051F7DC:
/* 8051F7DC  3B FF 00 02 */	addi r31, r31, 2
lbl_8051F7E0:
/* 8051F7E0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8051F7E4  28 00 00 00 */	cmplwi r0, 0
/* 8051F7E8  40 82 FF CC */	bne lbl_8051F7B4
/* 8051F7EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8051F7F0  4B B7 B7 31 */	bl func_8009AF20
/* 8051F7F4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8051F7F8  7C 08 03 A6 */	mtlr r0
/* 8051F7FC  38 21 00 20 */	addi r1, r1, 0x20
/* 8051F800  4E 80 00 20 */	blr 
