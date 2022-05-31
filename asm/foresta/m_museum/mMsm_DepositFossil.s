lbl_803C7088:
/* 803C7088  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803C708C  7C 08 02 A6 */	mflr r0
/* 803C7090  90 01 00 54 */	stw r0, 0x54(r1)
/* 803C7094  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 803C7098  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 803C709C  39 61 00 40 */	addi r11, r1, 0x40
/* 803C70A0  4B CD 3E 21 */	bl func_8009AEC0
/* 803C70A4  7C B8 2B 78 */	mr r24, r5
/* 803C70A8  7C 7C 1B 78 */	mr r28, r3
/* 803C70AC  7C 99 23 78 */	mr r25, r4
/* 803C70B0  7C DD 33 78 */	mr r29, r6
/* 803C70B4  7F 1E C3 78 */	mr r30, r24
/* 803C70B8  4B FF FF 91 */	bl mMsm_GetDepositBlockNum
/* 803C70BC  2C 19 00 05 */	cmpwi r25, 5
/* 803C70C0  40 80 00 CC */	bge lbl_803C718C
/* 803C70C4  3C 80 80 64 */	lis r4, lit_683@ha /* 0x80642854@ha */
/* 803C70C8  23 F9 00 05 */	subfic r31, r25, 5
/* 803C70CC  20 03 00 05 */	subfic r0, r3, 5
/* 803C70D0  CB E4 28 54 */	lfd f31, lit_683@l(r4)  /* 0x80642854@l */
/* 803C70D4  54 1A 06 3E */	clrlwi r26, r0, 0x18
/* 803C70D8  3F 60 43 30 */	lis r27, 0x4330
/* 803C70DC  48 00 00 94 */	b lbl_803C7170
lbl_803C70E0:
/* 803C70E0  7F D8 F3 78 */	mr r24, r30
/* 803C70E4  4B C9 5C 11 */	bl fqrand
/* 803C70E8  57 43 06 3E */	clrlwi r3, r26, 0x18
/* 803C70EC  93 61 00 08 */	stw r27, 8(r1)
/* 803C70F0  38 00 00 05 */	li r0, 5
/* 803C70F4  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 803C70F8  90 61 00 0C */	stw r3, 0xc(r1)
/* 803C70FC  3B 20 00 00 */	li r25, 0
/* 803C7100  C8 01 00 08 */	lfd f0, 8(r1)
/* 803C7104  EC 00 F8 28 */	fsubs f0, f0, f31
/* 803C7108  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C710C  FC 00 00 1E */	fctiwz f0, f0
/* 803C7110  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803C7114  80 61 00 14 */	lwz r3, 0x14(r1)
/* 803C7118  7C 09 03 A6 */	mtctr r0
lbl_803C711C:
/* 803C711C  38 19 00 01 */	addi r0, r25, 1
/* 803C7120  7C 80 06 30 */	sraw r0, r4, r0
/* 803C7124  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803C7128  40 82 00 38 */	bne lbl_803C7160
/* 803C712C  2C 03 00 00 */	cmpwi r3, 0
/* 803C7130  41 81 00 2C */	bgt lbl_803C715C
/* 803C7134  7F 23 CB 78 */	mr r3, r25
/* 803C7138  7F 04 C3 78 */	mr r4, r24
/* 803C713C  4B FF FD 41 */	bl mMsm_DepositFossilBlockLine
/* 803C7140  38 19 00 01 */	addi r0, r25, 1
/* 803C7144  38 60 00 01 */	li r3, 1
/* 803C7148  7C 60 00 30 */	slw r0, r3, r0
/* 803C714C  3B 5A FF FF */	addi r26, r26, -1
/* 803C7150  7F 80 03 78 */	or r0, r28, r0
/* 803C7154  54 1C 06 3E */	clrlwi r28, r0, 0x18
/* 803C7158  48 00 00 14 */	b lbl_803C716C
lbl_803C715C:
/* 803C715C  38 63 FF FF */	addi r3, r3, -1
lbl_803C7160:
/* 803C7160  3B 18 00 20 */	addi r24, r24, 0x20
/* 803C7164  3B 39 00 01 */	addi r25, r25, 1
/* 803C7168  42 00 FF B4 */	bdnz lbl_803C711C
lbl_803C716C:
/* 803C716C  3B FF FF FF */	addi r31, r31, -1
lbl_803C7170:
/* 803C7170  2C 1F 00 00 */	cmpwi r31, 0
/* 803C7174  40 81 00 0C */	ble lbl_803C7180
/* 803C7178  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 803C717C  40 82 FF 64 */	bne lbl_803C70E0
lbl_803C7180:
/* 803C7180  2C 1D 00 00 */	cmpwi r29, 0
/* 803C7184  41 82 00 08 */	beq lbl_803C718C
/* 803C7188  4B FF F0 21 */	bl mMsm_OrderInformationMail
lbl_803C718C:
/* 803C718C  4B FF F5 55 */	bl mMsm_SendResultMail
/* 803C7190  4B FF F0 95 */	bl mMsm_SendInformationMail
/* 803C7194  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 803C7198  39 61 00 40 */	addi r11, r1, 0x40
/* 803C719C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 803C71A0  4B CD 3D 6D */	bl func_8009AF0C
/* 803C71A4  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803C71A8  7C 08 03 A6 */	mtlr r0
/* 803C71AC  38 21 00 50 */	addi r1, r1, 0x50
/* 803C71B0  4E 80 00 20 */	blr 
