lbl_8049242C:
/* 8049242C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80492430  7C 08 02 A6 */	mflr r0
/* 80492434  90 01 00 44 */	stw r0, 0x44(r1)
/* 80492438  39 61 00 40 */	addi r11, r1, 0x40
/* 8049243C  4B C0 8A 85 */	bl func_8009AEC0
/* 80492440  7C 9C 23 78 */	mr r28, r4
/* 80492444  7C 7B 1B 78 */	mr r27, r3
/* 80492448  7C BD 2B 78 */	mr r29, r5
/* 8049244C  7C DE 33 78 */	mr r30, r6
/* 80492450  7F 99 E3 78 */	mr r25, r28
/* 80492454  3B E0 00 00 */	li r31, 0
/* 80492458  3B 40 00 00 */	li r26, 0
/* 8049245C  3B 00 00 00 */	li r24, 0
/* 80492460  48 00 00 54 */	b lbl_804924B4
lbl_80492464:
/* 80492464  7F 83 E3 78 */	mr r3, r28
/* 80492468  4B F3 94 09 */	bl mNpc_CheckFreeAnimalMemory
/* 8049246C  2C 03 00 00 */	cmpwi r3, 0
/* 80492470  40 82 00 3C */	bne lbl_804924AC
/* 80492474  7F C3 F3 78 */	mr r3, r30
/* 80492478  7F 84 E3 78 */	mr r4, r28
/* 8049247C  4B F4 DC C9 */	bl mPr_CheckCmpPersonalID
/* 80492480  2C 03 00 00 */	cmpwi r3, 0
/* 80492484  40 82 00 28 */	bne lbl_804924AC
/* 80492488  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 8049248C  7C 00 07 74 */	extsb r0, r0
/* 80492490  2C 00 00 50 */	cmpwi r0, 0x50
/* 80492494  41 80 00 18 */	blt lbl_804924AC
/* 80492498  88 1C 00 31 */	lbz r0, 0x31(r28)
/* 8049249C  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 804924A0  28 00 00 01 */	cmplwi r0, 1
/* 804924A4  40 82 00 08 */	bne lbl_804924AC
/* 804924A8  3B 5A 00 01 */	addi r26, r26, 1
lbl_804924AC:
/* 804924AC  3B 9C 01 38 */	addi r28, r28, 0x138
/* 804924B0  3B 18 00 01 */	addi r24, r24, 1
lbl_804924B4:
/* 804924B4  7C 18 E8 00 */	cmpw r24, r29
/* 804924B8  41 80 FF AC */	blt lbl_80492464
/* 804924BC  2C 1A 00 00 */	cmpwi r26, 0
/* 804924C0  40 81 00 B0 */	ble lbl_80492570
/* 804924C4  7F 3C CB 78 */	mr r28, r25
/* 804924C8  4B BC A8 2D */	bl fqrand
/* 804924CC  6F 43 80 00 */	xoris r3, r26, 0x8000
/* 804924D0  3C 00 43 30 */	lis r0, 0x4330
/* 804924D4  90 61 00 0C */	stw r3, 0xc(r1)
/* 804924D8  3C 80 80 64 */	lis r4, lit_565@ha /* 0x80644C6C@ha */
/* 804924DC  C8 44 4C 6C */	lfd f2, lit_565@l(r4)  /* 0x80644C6C@l */
/* 804924E0  3B 20 00 00 */	li r25, 0
/* 804924E4  90 01 00 08 */	stw r0, 8(r1)
/* 804924E8  C8 01 00 08 */	lfd f0, 8(r1)
/* 804924EC  EC 00 10 28 */	fsubs f0, f0, f2
/* 804924F0  EC 00 00 72 */	fmuls f0, f0, f1
/* 804924F4  FC 00 00 1E */	fctiwz f0, f0
/* 804924F8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 804924FC  83 41 00 14 */	lwz r26, 0x14(r1)
/* 80492500  48 00 00 68 */	b lbl_80492568
lbl_80492504:
/* 80492504  7F 83 E3 78 */	mr r3, r28
/* 80492508  4B F3 93 69 */	bl mNpc_CheckFreeAnimalMemory
/* 8049250C  2C 03 00 00 */	cmpwi r3, 0
/* 80492510  40 82 00 50 */	bne lbl_80492560
/* 80492514  7F C3 F3 78 */	mr r3, r30
/* 80492518  7F 84 E3 78 */	mr r4, r28
/* 8049251C  4B F4 DC 29 */	bl mPr_CheckCmpPersonalID
/* 80492520  2C 03 00 00 */	cmpwi r3, 0
/* 80492524  40 82 00 3C */	bne lbl_80492560
/* 80492528  88 1C 00 30 */	lbz r0, 0x30(r28)
/* 8049252C  7C 00 07 74 */	extsb r0, r0
/* 80492530  2C 00 00 50 */	cmpwi r0, 0x50
/* 80492534  41 80 00 2C */	blt lbl_80492560
/* 80492538  88 1C 00 31 */	lbz r0, 0x31(r28)
/* 8049253C  54 00 CF FE */	rlwinm r0, r0, 0x19, 0x1f, 0x1f
/* 80492540  28 00 00 01 */	cmplwi r0, 1
/* 80492544  40 82 00 1C */	bne lbl_80492560
/* 80492548  2C 1A 00 00 */	cmpwi r26, 0
/* 8049254C  40 82 00 10 */	bne lbl_8049255C
/* 80492550  93 9B 00 00 */	stw r28, 0(r27)
/* 80492554  3B FC 00 32 */	addi r31, r28, 0x32
/* 80492558  48 00 00 18 */	b lbl_80492570
lbl_8049255C:
/* 8049255C  3B 5A FF FF */	addi r26, r26, -1
lbl_80492560:
/* 80492560  3B 9C 01 38 */	addi r28, r28, 0x138
/* 80492564  3B 39 00 01 */	addi r25, r25, 1
lbl_80492568:
/* 80492568  7C 19 E8 00 */	cmpw r25, r29
/* 8049256C  41 80 FF 98 */	blt lbl_80492504
lbl_80492570:
/* 80492570  7F E3 FB 78 */	mr r3, r31
/* 80492574  39 61 00 40 */	addi r11, r1, 0x40
/* 80492578  4B C0 89 95 */	bl func_8009AF0C
/* 8049257C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80492580  7C 08 03 A6 */	mtlr r0
/* 80492584  38 21 00 40 */	addi r1, r1, 0x40
/* 80492588  4E 80 00 20 */	blr 