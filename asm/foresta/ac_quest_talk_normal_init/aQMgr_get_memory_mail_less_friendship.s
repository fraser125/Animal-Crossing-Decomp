lbl_8049258C:
/* 8049258C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80492590  7C 08 02 A6 */	mflr r0
/* 80492594  90 01 00 44 */	stw r0, 0x44(r1)
/* 80492598  39 61 00 40 */	addi r11, r1, 0x40
/* 8049259C  4B C0 89 21 */	bl func_8009AEBC
/* 804925A0  7C 9A 23 78 */	mr r26, r4
/* 804925A4  7C 79 1B 78 */	mr r25, r3
/* 804925A8  7C BB 2B 78 */	mr r27, r5
/* 804925AC  7C DC 33 78 */	mr r28, r6
/* 804925B0  7F 5E D3 78 */	mr r30, r26
/* 804925B4  3B E0 00 00 */	li r31, 0
/* 804925B8  3A E0 00 00 */	li r23, 0
/* 804925BC  3B A0 FF FF */	li r29, -1
/* 804925C0  3B 00 00 00 */	li r24, 0
/* 804925C4  48 00 00 54 */	b lbl_80492618
lbl_804925C8:
/* 804925C8  7F 43 D3 78 */	mr r3, r26
/* 804925CC  4B F3 92 A5 */	bl mNpc_CheckFreeAnimalMemory
/* 804925D0  2C 03 00 00 */	cmpwi r3, 0
/* 804925D4  40 82 00 3C */	bne lbl_80492610
/* 804925D8  7F 83 E3 78 */	mr r3, r28
/* 804925DC  7F 44 D3 78 */	mr r4, r26
/* 804925E0  4B F4 DB 65 */	bl mPr_CheckCmpPersonalID
/* 804925E4  2C 03 00 00 */	cmpwi r3, 0
/* 804925E8  40 82 00 28 */	bne lbl_80492610
/* 804925EC  88 1A 00 30 */	lbz r0, 0x30(r26)
/* 804925F0  7C 00 07 74 */	extsb r0, r0
/* 804925F4  2C 00 00 28 */	cmpwi r0, 0x28
/* 804925F8  40 80 00 18 */	bge lbl_80492610
/* 804925FC  88 1A 00 31 */	lbz r0, 0x31(r26)
/* 80492600  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80492604  28 00 00 01 */	cmplwi r0, 1
/* 80492608  40 82 00 08 */	bne lbl_80492610
/* 8049260C  3A F7 00 01 */	addi r23, r23, 1
lbl_80492610:
/* 80492610  3B 5A 01 38 */	addi r26, r26, 0x138
/* 80492614  3B 18 00 01 */	addi r24, r24, 1
lbl_80492618:
/* 80492618  7C 18 D8 00 */	cmpw r24, r27
/* 8049261C  41 80 FF AC */	blt lbl_804925C8
/* 80492620  2C 17 00 00 */	cmpwi r23, 0
/* 80492624  40 81 00 B4 */	ble lbl_804926D8
/* 80492628  7F DA F3 78 */	mr r26, r30
/* 8049262C  4B BC A6 C9 */	bl fqrand
/* 80492630  6E E3 80 00 */	xoris r3, r23, 0x8000
/* 80492634  3C 00 43 30 */	lis r0, 0x4330
/* 80492638  90 61 00 0C */	stw r3, 0xc(r1)
/* 8049263C  3C 80 80 64 */	lis r4, lit_565@ha /* 0x80644C6C@ha */
/* 80492640  C8 44 4C 6C */	lfd f2, lit_565@l(r4)  /* 0x80644C6C@l */
/* 80492644  3A E0 00 00 */	li r23, 0
/* 80492648  90 01 00 08 */	stw r0, 8(r1)
/* 8049264C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80492650  EC 00 10 28 */	fsubs f0, f0, f2
/* 80492654  EC 00 00 72 */	fmuls f0, f0, f1
/* 80492658  FC 00 00 1E */	fctiwz f0, f0
/* 8049265C  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80492660  83 01 00 14 */	lwz r24, 0x14(r1)
/* 80492664  48 00 00 6C */	b lbl_804926D0
lbl_80492668:
/* 80492668  7F 43 D3 78 */	mr r3, r26
/* 8049266C  4B F3 92 05 */	bl mNpc_CheckFreeAnimalMemory
/* 80492670  2C 03 00 00 */	cmpwi r3, 0
/* 80492674  40 82 00 54 */	bne lbl_804926C8
/* 80492678  7F 83 E3 78 */	mr r3, r28
/* 8049267C  7F 44 D3 78 */	mr r4, r26
/* 80492680  4B F4 DA C5 */	bl mPr_CheckCmpPersonalID
/* 80492684  2C 03 00 00 */	cmpwi r3, 0
/* 80492688  40 82 00 40 */	bne lbl_804926C8
/* 8049268C  88 1A 00 30 */	lbz r0, 0x30(r26)
/* 80492690  7C 00 07 74 */	extsb r0, r0
/* 80492694  2C 00 00 28 */	cmpwi r0, 0x28
/* 80492698  40 80 00 30 */	bge lbl_804926C8
/* 8049269C  88 1A 00 31 */	lbz r0, 0x31(r26)
/* 804926A0  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 804926A4  28 00 00 01 */	cmplwi r0, 1
/* 804926A8  40 82 00 20 */	bne lbl_804926C8
/* 804926AC  2C 18 00 00 */	cmpwi r24, 0
/* 804926B0  40 82 00 14 */	bne lbl_804926C4
/* 804926B4  93 59 00 00 */	stw r26, 0(r25)
/* 804926B8  7E FD BB 78 */	mr r29, r23
/* 804926BC  3B FA 00 32 */	addi r31, r26, 0x32
/* 804926C0  48 00 00 18 */	b lbl_804926D8
lbl_804926C4:
/* 804926C4  3B 18 FF FF */	addi r24, r24, -1
lbl_804926C8:
/* 804926C8  3B 5A 01 38 */	addi r26, r26, 0x138
/* 804926CC  3A F7 00 01 */	addi r23, r23, 1
lbl_804926D0:
/* 804926D0  7C 17 D8 00 */	cmpw r23, r27
/* 804926D4  41 80 FF 94 */	blt lbl_80492668
lbl_804926D8:
/* 804926D8  28 1F 00 00 */	cmplwi r31, 0
/* 804926DC  41 82 00 2C */	beq lbl_80492708
/* 804926E0  7F C3 F3 78 */	mr r3, r30
/* 804926E4  7F 64 DB 78 */	mr r4, r27
/* 804926E8  4B F3 9A 11 */	bl mNpc_GetAnimalMemoryBestFriend
/* 804926EC  2C 03 FF FF */	cmpwi r3, -1
/* 804926F0  41 82 00 18 */	beq lbl_80492708
/* 804926F4  7C 03 E8 00 */	cmpw r3, r29
/* 804926F8  40 82 00 10 */	bne lbl_80492708
/* 804926FC  38 00 00 00 */	li r0, 0
/* 80492700  3B E0 00 00 */	li r31, 0
/* 80492704  90 19 00 00 */	stw r0, 0(r25)
lbl_80492708:
/* 80492708  7F E3 FB 78 */	mr r3, r31
/* 8049270C  39 61 00 40 */	addi r11, r1, 0x40
/* 80492710  4B C0 87 F9 */	bl func_8009AF08
/* 80492714  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80492718  7C 08 03 A6 */	mtlr r0
/* 8049271C  38 21 00 40 */	addi r1, r1, 0x40
/* 80492720  4E 80 00 20 */	blr 