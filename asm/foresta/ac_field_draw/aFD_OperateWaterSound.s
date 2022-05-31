lbl_80422D14:
/* 80422D14  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80422D18  7C 08 02 A6 */	mflr r0
/* 80422D1C  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80422D20  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80422D24  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80422D28  DB C1 00 90 */	stfd f30, 0x90(r1)
/* 80422D2C  F3 C1 00 98 */	psq_st f30, 152(r1), 0, 0 /* qr0 */
/* 80422D30  39 61 00 90 */	addi r11, r1, 0x90
/* 80422D34  4B C7 81 79 */	bl func_8009AEAC
/* 80422D38  FF C0 08 90 */	fmr f30, f1
/* 80422D3C  2C 07 00 00 */	cmpwi r7, 0
/* 80422D40  FF E0 10 90 */	fmr f31, f2
/* 80422D44  7C 75 1B 78 */	mr r21, r3
/* 80422D48  7C 96 23 78 */	mr r22, r4
/* 80422D4C  7C B7 2B 78 */	mr r23, r5
/* 80422D50  7C D8 33 78 */	mr r24, r6
/* 80422D54  3B C0 00 00 */	li r30, 0
/* 80422D58  38 00 00 00 */	li r0, 0
/* 80422D5C  41 80 00 10 */	blt lbl_80422D6C
/* 80422D60  2C 07 00 03 */	cmpwi r7, 3
/* 80422D64  40 80 00 08 */	bge lbl_80422D6C
/* 80422D68  38 00 00 01 */	li r0, 1
lbl_80422D6C:
/* 80422D6C  20 00 00 00 */	subfic r0, r0, 0
/* 80422D70  3C 80 80 68 */	lis r4, ongen_block_count_table@ha /* 0x80682928@ha */
/* 80422D74  7C 00 01 10 */	subfe r0, r0, r0
/* 80422D78  3C 60 80 64 */	lis r3, data_80643E14@ha /* 0x80643E14@ha */
/* 80422D7C  7C E0 00 38 */	and r0, r7, r0
/* 80422D80  38 C4 29 28 */	addi r6, r4, ongen_block_count_table@l /* 0x80682928@l */
/* 80422D84  54 07 10 3A */	slwi r7, r0, 2
/* 80422D88  38 63 3E 14 */	addi r3, r3, data_80643E14@l /* 0x80643E14@l */
/* 80422D8C  38 00 00 03 */	li r0, 3
/* 80422D90  38 A1 00 30 */	addi r5, r1, 0x30
/* 80422D94  38 83 FF FC */	addi r4, r3, -4
/* 80422D98  7F A6 38 2E */	lwzx r29, r6, r7
/* 80422D9C  3B 60 00 00 */	li r27, 0
/* 80422DA0  3A 60 00 00 */	li r19, 0
/* 80422DA4  7C 09 03 A6 */	mtctr r0
lbl_80422DA8:
/* 80422DA8  80 64 00 04 */	lwz r3, 4(r4)
/* 80422DAC  84 04 00 08 */	lwzu r0, 8(r4)
/* 80422DB0  90 65 00 04 */	stw r3, 4(r5)
/* 80422DB4  94 05 00 08 */	stwu r0, 8(r5)
/* 80422DB8  42 00 FF F0 */	bdnz lbl_80422DA8
/* 80422DBC  80 D5 00 00 */	lwz r6, 0(r21)
/* 80422DC0  38 61 00 0C */	addi r3, r1, 0xc
/* 80422DC4  80 15 00 04 */	lwz r0, 4(r21)
/* 80422DC8  38 81 00 08 */	addi r4, r1, 8
/* 80422DCC  38 A1 00 1C */	addi r5, r1, 0x1c
/* 80422DD0  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 80422DD4  90 01 00 20 */	stw r0, 0x20(r1)
/* 80422DD8  80 15 00 08 */	lwz r0, 8(r21)
/* 80422DDC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80422DE0  4B F8 29 81 */	bl mFI_Wpos2BlockNum
/* 80422DE4  2C 03 00 00 */	cmpwi r3, 0
/* 80422DE8  41 82 02 78 */	beq lbl_80423060
/* 80422DEC  3C 60 80 68 */	lis r3, aFD_block_offset_table@ha /* 0x80682904@ha */
/* 80422DF0  3B 80 00 00 */	li r28, 0
/* 80422DF4  3B E3 29 04 */	addi r31, r3, aFD_block_offset_table@l /* 0x80682904@l */
/* 80422DF8  3A 80 00 00 */	li r20, 0
/* 80422DFC  48 00 00 AC */	b lbl_80422EA8
lbl_80422E00:
/* 80422E00  7C DF A2 14 */	add r6, r31, r20
/* 80422E04  80 A1 00 0C */	lwz r5, 0xc(r1)
/* 80422E08  A8 66 00 00 */	lha r3, 0(r6)
/* 80422E0C  80 81 00 08 */	lwz r4, 8(r1)
/* 80422E10  A8 06 00 02 */	lha r0, 2(r6)
/* 80422E14  7F 45 1A 14 */	add r26, r5, r3
/* 80422E18  7F 43 D3 78 */	mr r3, r26
/* 80422E1C  7F 24 02 14 */	add r25, r4, r0
/* 80422E20  7F 24 CB 78 */	mr r4, r25
/* 80422E24  4B F8 3A 25 */	bl mFI_GetSoundSourcePBlockNum
/* 80422E28  28 03 00 00 */	cmplwi r3, 0
/* 80422E2C  41 82 00 74 */	beq lbl_80422EA0
/* 80422E30  38 00 00 06 */	li r0, 6
/* 80422E34  7E E5 07 34 */	extsh r5, r23
/* 80422E38  38 C0 00 00 */	li r6, 0
/* 80422E3C  7C 09 03 A6 */	mtctr r0
/* 80422E40  3C 80 81 1D */	lis r4, data_811CB9F8@ha /* 0x811CB9F8@ha */
/* 80422E44  38 04 B9 F8 */	addi r0, r4, data_811CB9F8@l /* 0x811CB9F8@l */
lbl_80422E48:
/* 80422E48  A8 83 00 00 */	lha r4, 0(r3)
/* 80422E4C  7C 04 28 00 */	cmpw r4, r5
/* 80422E50  40 82 00 44 */	bne lbl_80422E94
/* 80422E54  C0 75 00 00 */	lfs f3, 0(r21)
/* 80422E58  7C 80 9A 14 */	add r4, r0, r19
/* 80422E5C  C0 43 00 04 */	lfs f2, 4(r3)
/* 80422E60  3B 7B 00 01 */	addi r27, r27, 1
/* 80422E64  C0 35 00 08 */	lfs f1, 8(r21)
/* 80422E68  3A 73 00 10 */	addi r19, r19, 0x10
/* 80422E6C  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80422E70  EC 43 10 28 */	fsubs f2, f3, f2
/* 80422E74  EC 01 00 28 */	fsubs f0, f1, f0
/* 80422E78  90 C4 00 00 */	stw r6, 0(r4)
/* 80422E7C  EC 22 00 B2 */	fmuls f1, f2, f2
/* 80422E80  93 44 00 04 */	stw r26, 4(r4)
/* 80422E84  EC 00 00 32 */	fmuls f0, f0, f0
/* 80422E88  93 24 00 08 */	stw r25, 8(r4)
/* 80422E8C  EC 01 00 2A */	fadds f0, f1, f0
/* 80422E90  D0 04 00 0C */	stfs f0, 0xc(r4)
lbl_80422E94:
/* 80422E94  38 63 00 10 */	addi r3, r3, 0x10
/* 80422E98  38 C6 00 01 */	addi r6, r6, 1
/* 80422E9C  42 00 FF AC */	bdnz lbl_80422E48
lbl_80422EA0:
/* 80422EA0  3B 9C 00 01 */	addi r28, r28, 1
/* 80422EA4  3A 94 00 04 */	addi r20, r20, 4
lbl_80422EA8:
/* 80422EA8  7C 1C E8 00 */	cmpw r28, r29
/* 80422EAC  41 80 FF 54 */	blt lbl_80422E00
/* 80422EB0  2C 1B 00 00 */	cmpwi r27, 0
/* 80422EB4  41 82 01 AC */	beq lbl_80423060
/* 80422EB8  3C 80 80 64 */	lis r4, lit_511@ha /* 0x80643E2C@ha */
/* 80422EBC  3C 60 81 1D */	lis r3, data_811CB9F8@ha /* 0x811CB9F8@ha */
/* 80422EC0  38 C3 B9 F8 */	addi r6, r3, data_811CB9F8@l /* 0x811CB9F8@l */
/* 80422EC4  39 20 FF FF */	li r9, -1
/* 80422EC8  C0 24 3E 2C */	lfs f1, lit_511@l(r4)  /* 0x80643E2C@l */
/* 80422ECC  39 00 00 00 */	li r8, 0
/* 80422ED0  38 60 00 00 */	li r3, 0
/* 80422ED4  7F 69 03 A6 */	mtctr r27
/* 80422ED8  40 81 00 40 */	ble lbl_80422F18
lbl_80422EDC:
/* 80422EDC  7C E6 1A 14 */	add r7, r6, r3
/* 80422EE0  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 80422EE4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80422EE8  40 80 00 24 */	bge lbl_80422F0C
/* 80422EEC  80 A7 00 00 */	lwz r5, 0(r7)
/* 80422EF0  FC 20 00 90 */	fmr f1, f0
/* 80422EF4  80 87 00 04 */	lwz r4, 4(r7)
/* 80422EF8  7D 09 43 78 */	mr r9, r8
/* 80422EFC  80 07 00 08 */	lwz r0, 8(r7)
/* 80422F00  90 A1 00 34 */	stw r5, 0x34(r1)
/* 80422F04  90 81 00 38 */	stw r4, 0x38(r1)
/* 80422F08  90 01 00 3C */	stw r0, 0x3c(r1)
lbl_80422F0C:
/* 80422F0C  39 08 00 01 */	addi r8, r8, 1
/* 80422F10  38 63 00 10 */	addi r3, r3, 0x10
/* 80422F14  42 00 FF C8 */	bdnz lbl_80422EDC
lbl_80422F18:
/* 80422F18  3C 80 80 64 */	lis r4, lit_511@ha /* 0x80643E2C@ha */
/* 80422F1C  3C 60 81 1D */	lis r3, data_811CB9F8@ha /* 0x811CB9F8@ha */
/* 80422F20  38 C3 B9 F8 */	addi r6, r3, data_811CB9F8@l /* 0x811CB9F8@l */
/* 80422F24  39 00 00 00 */	li r8, 0
/* 80422F28  C0 24 3E 2C */	lfs f1, lit_511@l(r4)  /* 0x80643E2C@l */
/* 80422F2C  38 60 00 00 */	li r3, 0
/* 80422F30  7F 69 03 A6 */	mtctr r27
/* 80422F34  2C 1B 00 00 */	cmpwi r27, 0
/* 80422F38  40 81 00 44 */	ble lbl_80422F7C
lbl_80422F3C:
/* 80422F3C  7C 08 48 00 */	cmpw r8, r9
/* 80422F40  41 82 00 30 */	beq lbl_80422F70
/* 80422F44  7C E6 1A 14 */	add r7, r6, r3
/* 80422F48  C0 07 00 0C */	lfs f0, 0xc(r7)
/* 80422F4C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80422F50  40 80 00 20 */	bge lbl_80422F70
/* 80422F54  80 A7 00 00 */	lwz r5, 0(r7)
/* 80422F58  FC 20 00 90 */	fmr f1, f0
/* 80422F5C  80 87 00 04 */	lwz r4, 4(r7)
/* 80422F60  80 07 00 08 */	lwz r0, 8(r7)
/* 80422F64  90 A1 00 40 */	stw r5, 0x40(r1)
/* 80422F68  90 81 00 44 */	stw r4, 0x44(r1)
/* 80422F6C  90 01 00 48 */	stw r0, 0x48(r1)
lbl_80422F70:
/* 80422F70  39 08 00 01 */	addi r8, r8, 1
/* 80422F74  38 63 00 10 */	addi r3, r3, 0x10
/* 80422F78  42 00 FF C4 */	bdnz lbl_80422F3C
lbl_80422F7C:
/* 80422F7C  3B E0 00 00 */	li r31, 0
/* 80422F80  3A A0 00 00 */	li r21, 0
lbl_80422F84:
/* 80422F84  3A 61 00 34 */	addi r19, r1, 0x34
/* 80422F88  7E 73 AA 14 */	add r19, r19, r21
/* 80422F8C  80 13 00 00 */	lwz r0, 0(r19)
/* 80422F90  2C 00 FF FF */	cmpwi r0, -1
/* 80422F94  41 82 00 BC */	beq lbl_80423050
/* 80422F98  4B F8 1D F9 */	bl mFI_GetBlockXMax
/* 80422F9C  80 93 00 08 */	lwz r4, 8(r19)
/* 80422FA0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80422FA4  80 73 00 04 */	lwz r3, 4(r19)
/* 80422FA8  7C A4 01 D6 */	mullw r5, r4, r0
/* 80422FAC  80 13 00 00 */	lwz r0, 0(r19)
/* 80422FB0  7C A3 2A 14 */	add r5, r3, r5
/* 80422FB4  1C A5 00 06 */	mulli r5, r5, 6
/* 80422FB8  7E 85 02 14 */	add r20, r5, r0
/* 80422FBC  7E 96 A2 14 */	add r20, r22, r20
/* 80422FC0  4B F8 38 89 */	bl mFI_GetSoundSourcePBlockNum
/* 80422FC4  28 03 00 00 */	cmplwi r3, 0
/* 80422FC8  41 82 00 88 */	beq lbl_80423050
/* 80422FCC  80 13 00 00 */	lwz r0, 0(r19)
/* 80422FD0  3C 80 80 64 */	lis r4, lit_513@ha /* 0x80643E34@ha */
/* 80422FD4  C0 24 3E 34 */	lfs f1, lit_513@l(r4)  /* 0x80643E34@l */
/* 80422FD8  54 05 20 36 */	slwi r5, r0, 4
/* 80422FDC  38 05 00 04 */	addi r0, r5, 4
/* 80422FE0  7C C3 02 14 */	add r6, r3, r0
/* 80422FE4  38 61 00 10 */	addi r3, r1, 0x10
/* 80422FE8  80 A6 00 00 */	lwz r5, 0(r6)
/* 80422FEC  80 86 00 04 */	lwz r4, 4(r6)
/* 80422FF0  90 A1 00 28 */	stw r5, 0x28(r1)
/* 80422FF4  90 81 00 2C */	stw r4, 0x2c(r1)
/* 80422FF8  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 80422FFC  80 06 00 08 */	lwz r0, 8(r6)
/* 80423000  EC 40 F0 2A */	fadds f2, f0, f30
/* 80423004  90 01 00 30 */	stw r0, 0x30(r1)
/* 80423008  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8042300C  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80423010  EC 00 F8 2A */	fadds f0, f0, f31
/* 80423014  90 A1 00 10 */	stw r5, 0x10(r1)
/* 80423018  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8042301C  90 81 00 14 */	stw r4, 0x14(r1)
/* 80423020  90 01 00 18 */	stw r0, 0x18(r1)
/* 80423024  4B F6 C7 FD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 80423028  3C 80 80 64 */	lis r4, lit_512@ha /* 0x80643E30@ha */
/* 8042302C  7E 83 A3 78 */	mr r3, r20
/* 80423030  38 A4 3E 30 */	addi r5, r4, lit_512@l /* 0x80643E30@l */
/* 80423034  7F 04 C3 78 */	mr r4, r24
/* 80423038  C0 05 00 00 */	lfs f0, 0(r5)
/* 8042303C  38 A1 00 28 */	addi r5, r1, 0x28
/* 80423040  EC 00 08 2A */	fadds f0, f0, f1
/* 80423044  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80423048  48 20 AE FD */	bl sAdo_OngenPos
/* 8042304C  3B C0 00 01 */	li r30, 1
lbl_80423050:
/* 80423050  3B FF 00 01 */	addi r31, r31, 1
/* 80423054  3A B5 00 0C */	addi r21, r21, 0xc
/* 80423058  2C 1F 00 02 */	cmpwi r31, 2
/* 8042305C  41 80 FF 28 */	blt lbl_80422F84
lbl_80423060:
/* 80423060  7F C3 F3 78 */	mr r3, r30
/* 80423064  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80423068  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 8042306C  E3 C1 00 98 */	psq_l f30, 152(r1), 0, 0 /* qr0 */
/* 80423070  39 61 00 90 */	addi r11, r1, 0x90
/* 80423074  CB C1 00 90 */	lfd f30, 0x90(r1)
/* 80423078  4B C7 7E 81 */	bl func_8009AEF8
/* 8042307C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80423080  7C 08 03 A6 */	mtlr r0
/* 80423084  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80423088  4E 80 00 20 */	blr 
