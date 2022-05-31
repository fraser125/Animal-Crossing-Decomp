lbl_803AA1E0:
/* 803AA1E0  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 803AA1E4  7C 08 02 A6 */	mflr r0
/* 803AA1E8  90 01 00 64 */	stw r0, 0x64(r1)
/* 803AA1EC  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 803AA1F0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 803AA1F4  39 61 00 50 */	addi r11, r1, 0x50
/* 803AA1F8  4B CF 0C B5 */	bl func_8009AEAC
/* 803AA1FC  7C 94 23 79 */	or. r20, r4, r4
/* 803AA200  3C 80 81 16 */	lis r4, candidate@ha /* 0x81167CBC@ha */
/* 803AA204  7C BB 2B 78 */	mr r27, r5
/* 803AA208  7C D7 33 78 */	mr r23, r6
/* 803AA20C  38 04 7C BC */	addi r0, r4, candidate@l /* 0x81167CBC@l */
/* 803AA210  7C 73 1B 78 */	mr r19, r3
/* 803AA214  7C F5 3B 78 */	mr r21, r7
/* 803AA218  7F 7A DB 78 */	mr r26, r27
/* 803AA21C  7C 1E 03 78 */	mr r30, r0
/* 803AA220  7E F9 BB 78 */	mr r25, r23
/* 803AA224  3B 00 00 00 */	li r24, 0
/* 803AA228  3A C0 00 00 */	li r22, 0
/* 803AA22C  40 81 02 08 */	ble lbl_803AA434
/* 803AA230  2C 14 01 00 */	cmpwi r20, 0x100
/* 803AA234  41 81 02 00 */	bgt lbl_803AA434
/* 803AA238  28 1B 00 00 */	cmplwi r27, 0
/* 803AA23C  41 82 00 88 */	beq lbl_803AA2C4
/* 803AA240  7C 03 03 78 */	mr r3, r0
/* 803AA244  38 80 00 20 */	li r4, 0x20
/* 803AA248  4B CB 2E 21 */	bl bzero
/* 803AA24C  3B E0 00 00 */	li r31, 0
/* 803AA250  56 7D 04 3E */	clrlwi r29, r19, 0x10
lbl_803AA254:
/* 803AA254  3A 60 00 00 */	li r19, 0
/* 803AA258  3B 80 00 01 */	li r28, 1
lbl_803AA25C:
/* 803AA25C  A0 1B 00 00 */	lhz r0, 0(r27)
/* 803AA260  7C 00 E8 40 */	cmplw r0, r29
/* 803AA264  40 82 00 3C */	bne lbl_803AA2A0
/* 803AA268  2C 15 00 01 */	cmpwi r21, 1
/* 803AA26C  41 82 00 20 */	beq lbl_803AA28C
/* 803AA270  28 17 00 00 */	cmplwi r23, 0
/* 803AA274  41 82 00 2C */	beq lbl_803AA2A0
/* 803AA278  7E E3 BB 78 */	mr r3, r23
/* 803AA27C  7E 64 9B 78 */	mr r4, r19
/* 803AA280  4B FF EB 0D */	bl mFI_GetLineDeposit
/* 803AA284  2C 03 00 00 */	cmpwi r3, 0
/* 803AA288  40 82 00 18 */	bne lbl_803AA2A0
lbl_803AA28C:
/* 803AA28C  A0 7E 00 00 */	lhz r3, 0(r30)
/* 803AA290  7F 80 98 30 */	slw r0, r28, r19
/* 803AA294  3B 18 00 01 */	addi r24, r24, 1
/* 803AA298  7C 60 03 78 */	or r0, r3, r0
/* 803AA29C  B0 1E 00 00 */	sth r0, 0(r30)
lbl_803AA2A0:
/* 803AA2A0  3A 73 00 01 */	addi r19, r19, 1
/* 803AA2A4  3B 7B 00 02 */	addi r27, r27, 2
/* 803AA2A8  2C 13 00 10 */	cmpwi r19, 0x10
/* 803AA2AC  41 80 FF B0 */	blt lbl_803AA25C
/* 803AA2B0  3B FF 00 01 */	addi r31, r31, 1
/* 803AA2B4  3B DE 00 02 */	addi r30, r30, 2
/* 803AA2B8  2C 1F 00 10 */	cmpwi r31, 0x10
/* 803AA2BC  3A F7 00 02 */	addi r23, r23, 2
/* 803AA2C0  41 80 FF 94 */	blt lbl_803AA254
lbl_803AA2C4:
/* 803AA2C4  2C 18 00 00 */	cmpwi r24, 0
/* 803AA2C8  40 81 01 6C */	ble lbl_803AA434
/* 803AA2CC  7C 18 A0 00 */	cmpw r24, r20
/* 803AA2D0  41 81 00 80 */	bgt lbl_803AA350
/* 803AA2D4  3C 60 81 16 */	lis r3, candidate@ha /* 0x81167CBC@ha */
/* 803AA2D8  7F 37 CB 78 */	mr r23, r25
/* 803AA2DC  7F 5B D3 78 */	mr r27, r26
/* 803AA2E0  3B 20 00 00 */	li r25, 0
/* 803AA2E4  3A C3 7C BC */	addi r22, r3, candidate@l /* 0x81167CBC@l */
lbl_803AA2E8:
/* 803AA2E8  3B 40 00 00 */	li r26, 0
/* 803AA2EC  7F 54 D3 78 */	mr r20, r26
lbl_803AA2F0:
/* 803AA2F0  A0 16 00 00 */	lhz r0, 0(r22)
/* 803AA2F4  7C 00 D6 30 */	sraw r0, r0, r26
/* 803AA2F8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803AA2FC  2C 00 00 01 */	cmpwi r0, 1
/* 803AA300  40 82 00 24 */	bne lbl_803AA324
/* 803AA304  2C 15 00 01 */	cmpwi r21, 1
/* 803AA308  B2 9B 00 00 */	sth r20, 0(r27)
/* 803AA30C  40 82 00 18 */	bne lbl_803AA324
/* 803AA310  28 17 00 00 */	cmplwi r23, 0
/* 803AA314  41 82 00 10 */	beq lbl_803AA324
/* 803AA318  7E E3 BB 78 */	mr r3, r23
/* 803AA31C  7F 44 D3 78 */	mr r4, r26
/* 803AA320  4B FF EA 51 */	bl mFI_LineDepositOFF
lbl_803AA324:
/* 803AA324  3B 5A 00 01 */	addi r26, r26, 1
/* 803AA328  3B 7B 00 02 */	addi r27, r27, 2
/* 803AA32C  2C 1A 00 10 */	cmpwi r26, 0x10
/* 803AA330  41 80 FF C0 */	blt lbl_803AA2F0
/* 803AA334  3B 39 00 01 */	addi r25, r25, 1
/* 803AA338  3A D6 00 02 */	addi r22, r22, 2
/* 803AA33C  2C 19 00 10 */	cmpwi r25, 0x10
/* 803AA340  3A F7 00 02 */	addi r23, r23, 2
/* 803AA344  41 80 FF A4 */	blt lbl_803AA2E8
/* 803AA348  7F 16 C3 78 */	mr r22, r24
/* 803AA34C  48 00 00 E8 */	b lbl_803AA434
lbl_803AA350:
/* 803AA350  3C 60 80 64 */	lis r3, lit_648@ha /* 0x80641F5C@ha */
/* 803AA354  3C 80 81 16 */	lis r4, candidate@ha /* 0x81167CBC@ha */
/* 803AA358  CB E3 1F 5C */	lfd f31, lit_648@l(r3)  /* 0x80641F5C@l */
/* 803AA35C  3F E0 43 30 */	lis r31, 0x4330
/* 803AA360  3B C4 7C BC */	addi r30, r4, candidate@l /* 0x81167CBC@l */
/* 803AA364  48 00 00 C0 */	b lbl_803AA424
lbl_803AA368:
/* 803AA368  7F 5C D3 78 */	mr r28, r26
/* 803AA36C  7F 3B CB 78 */	mr r27, r25
/* 803AA370  7F DD F3 78 */	mr r29, r30
/* 803AA374  4B CB 29 81 */	bl fqrand
/* 803AA378  6F 00 80 00 */	xoris r0, r24, 0x8000
/* 803AA37C  93 E1 00 08 */	stw r31, 8(r1)
/* 803AA380  38 60 00 00 */	li r3, 0
/* 803AA384  90 01 00 0C */	stw r0, 0xc(r1)
/* 803AA388  C8 01 00 08 */	lfd f0, 8(r1)
/* 803AA38C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 803AA390  EC 00 00 72 */	fmuls f0, f0, f1
/* 803AA394  FC 00 00 1E */	fctiwz f0, f0
/* 803AA398  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803AA39C  82 E1 00 14 */	lwz r23, 0x14(r1)
/* 803AA3A0  48 00 00 74 */	b lbl_803AA414
lbl_803AA3A4:
/* 803AA3A4  38 00 00 10 */	li r0, 0x10
/* 803AA3A8  38 80 00 00 */	li r4, 0
/* 803AA3AC  7C 09 03 A6 */	mtctr r0
lbl_803AA3B0:
/* 803AA3B0  A0 1D 00 00 */	lhz r0, 0(r29)
/* 803AA3B4  7C 00 26 30 */	sraw r0, r0, r4
/* 803AA3B8  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803AA3BC  2C 00 00 01 */	cmpwi r0, 1
/* 803AA3C0  40 82 00 3C */	bne lbl_803AA3FC
/* 803AA3C4  2C 17 00 00 */	cmpwi r23, 0
/* 803AA3C8  41 81 00 30 */	bgt lbl_803AA3F8
/* 803AA3CC  38 00 00 00 */	li r0, 0
/* 803AA3D0  2C 15 00 01 */	cmpwi r21, 1
/* 803AA3D4  B0 1C 00 00 */	sth r0, 0(r28)
/* 803AA3D8  40 82 00 14 */	bne lbl_803AA3EC
/* 803AA3DC  28 1B 00 00 */	cmplwi r27, 0
/* 803AA3E0  41 82 00 0C */	beq lbl_803AA3EC
/* 803AA3E4  7F 63 DB 78 */	mr r3, r27
/* 803AA3E8  4B FF E9 89 */	bl mFI_LineDepositOFF
lbl_803AA3EC:
/* 803AA3EC  38 60 00 10 */	li r3, 0x10
/* 803AA3F0  3B 18 FF FF */	addi r24, r24, -1
/* 803AA3F4  48 00 00 14 */	b lbl_803AA408
lbl_803AA3F8:
/* 803AA3F8  3A F7 FF FF */	addi r23, r23, -1
lbl_803AA3FC:
/* 803AA3FC  3B 9C 00 02 */	addi r28, r28, 2
/* 803AA400  38 84 00 01 */	addi r4, r4, 1
/* 803AA404  42 00 FF AC */	bdnz lbl_803AA3B0
lbl_803AA408:
/* 803AA408  3B 7B 00 02 */	addi r27, r27, 2
/* 803AA40C  3B BD 00 02 */	addi r29, r29, 2
/* 803AA410  38 63 00 01 */	addi r3, r3, 1
lbl_803AA414:
/* 803AA414  2C 03 00 10 */	cmpwi r3, 0x10
/* 803AA418  41 80 FF 8C */	blt lbl_803AA3A4
/* 803AA41C  3A D6 00 01 */	addi r22, r22, 1
/* 803AA420  3A 94 FF FF */	addi r20, r20, -1
lbl_803AA424:
/* 803AA424  2C 14 00 00 */	cmpwi r20, 0
/* 803AA428  41 82 00 0C */	beq lbl_803AA434
/* 803AA42C  2C 18 00 00 */	cmpwi r24, 0
/* 803AA430  40 82 FF 38 */	bne lbl_803AA368
lbl_803AA434:
/* 803AA434  7E C3 B3 78 */	mr r3, r22
/* 803AA438  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 803AA43C  39 61 00 50 */	addi r11, r1, 0x50
/* 803AA440  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 803AA444  4B CF 0A B5 */	bl func_8009AEF8
/* 803AA448  80 01 00 64 */	lwz r0, 0x64(r1)
/* 803AA44C  7C 08 03 A6 */	mtlr r0
/* 803AA450  38 21 00 60 */	addi r1, r1, 0x60
/* 803AA454  4E 80 00 20 */	blr 
