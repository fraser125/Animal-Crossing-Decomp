lbl_8037DC44:
/* 8037DC44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037DC48  7C 08 02 A6 */	mflr r0
/* 8037DC4C  7C 68 1B 78 */	mr r8, r3
/* 8037DC50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037DC54  A8 E3 1B C0 */	lha r7, 0x1bc0(r3)
/* 8037DC58  A8 C3 1B C2 */	lha r6, 0x1bc2(r3)
/* 8037DC5C  7C A3 2B 78 */	mr r3, r5
/* 8037DC60  3C E7 00 01 */	addis r7, r7, 1
/* 8037DC64  C0 28 1B D8 */	lfs f1, 0x1bd8(r8)
/* 8037DC68  3C A6 00 01 */	addis r5, r6, 1
/* 8037DC6C  7C 86 23 78 */	mr r6, r4
/* 8037DC70  38 87 80 00 */	addi r4, r7, -32768
/* 8037DC74  38 05 80 00 */	addi r0, r5, -32768
/* 8037DC78  7C 84 07 34 */	extsh r4, r4
/* 8037DC7C  7C 05 07 34 */	extsh r5, r0
/* 8037DC80  4B FF FE A1 */	bl Camera2_PolaPosCalc
/* 8037DC84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037DC88  7C 08 03 A6 */	mtlr r0
/* 8037DC8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8037DC90  4E 80 00 20 */	blr 
