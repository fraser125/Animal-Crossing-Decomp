lbl_8051873C:
/* 8051873C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80518740  7C 08 02 A6 */	mflr r0
/* 80518744  90 01 00 14 */	stw r0, 0x14(r1)
/* 80518748  4B B4 45 AD */	bl fqrand
/* 8051874C  3C 60 80 65 */	lis r3, lit_580@ha /* 0x8064906C@ha */
/* 80518750  C0 03 90 6C */	lfs f0, lit_580@l(r3)  /* 0x8064906C@l */
/* 80518754  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80518758  40 81 00 2C */	ble lbl_80518784
/* 8051875C  38 81 00 08 */	addi r4, r1, 8
/* 80518760  38 60 00 00 */	li r3, 0
/* 80518764  38 A0 00 01 */	li r5, 1
/* 80518768  38 C0 00 00 */	li r6, 0
/* 8051876C  38 E0 00 00 */	li r7, 0
/* 80518770  39 00 00 02 */	li r8, 2
/* 80518774  39 20 00 08 */	li r9, 8
/* 80518778  39 40 00 00 */	li r10, 0
/* 8051877C  4B EC FC 61 */	bl mSP_SelectRandomItem_New
/* 80518780  48 00 00 28 */	b lbl_805187A8
lbl_80518784:
/* 80518784  38 81 00 08 */	addi r4, r1, 8
/* 80518788  38 60 00 00 */	li r3, 0
/* 8051878C  38 A0 00 01 */	li r5, 1
/* 80518790  38 C0 00 00 */	li r6, 0
/* 80518794  38 E0 00 00 */	li r7, 0
/* 80518798  39 00 00 00 */	li r8, 0
/* 8051879C  39 20 00 08 */	li r9, 8
/* 805187A0  39 40 00 00 */	li r10, 0
/* 805187A4  4B EC FC 39 */	bl mSP_SelectRandomItem_New
lbl_805187A8:
/* 805187A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805187AC  A0 61 00 08 */	lhz r3, 8(r1)
/* 805187B0  7C 08 03 A6 */	mtlr r0
/* 805187B4  38 21 00 10 */	addi r1, r1, 0x10
/* 805187B8  4E 80 00 20 */	blr 
