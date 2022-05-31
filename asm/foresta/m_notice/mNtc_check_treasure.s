lbl_803CA3F4:
/* 803CA3F4  94 21 FE 60 */	stwu r1, -0x1a0(r1)
/* 803CA3F8  7C 08 02 A6 */	mflr r0
/* 803CA3FC  90 01 01 A4 */	stw r0, 0x1a4(r1)
/* 803CA400  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 803CA404  4B CD 0A BD */	bl func_8009AEC0
/* 803CA408  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CA40C  3B 60 00 00 */	li r27, 0
/* 803CA410  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CA414  3B 40 00 00 */	li r26, 0
/* 803CA418  3F E3 00 02 */	addis r31, r3, 2
/* 803CA41C  80 1F 61 20 */	lwz r0, 0x6120(r31)
/* 803CA420  3F A3 00 01 */	addis r29, r3, 1
/* 803CA424  7F BC EB 78 */	mr r28, r29
/* 803CA428  80 7F 61 24 */	lwz r3, 0x6124(r31)
/* 803CA42C  90 01 00 18 */	stw r0, 0x18(r1)
/* 803CA430  7F FE FB 78 */	mr r30, r31
/* 803CA434  3B FF 13 7E */	addi r31, r31, 0x137e
/* 803CA438  3B BD 74 38 */	addi r29, r29, 0x7438
/* 803CA43C  88 01 00 1A */	lbz r0, 0x1a(r1)
/* 803CA440  3B DE 13 86 */	addi r30, r30, 0x1386
/* 803CA444  90 61 00 1C */	stw r3, 0x1c(r1)
/* 803CA448  3B 9C 91 20 */	addi r28, r28, -28384
/* 803CA44C  28 00 00 06 */	cmplwi r0, 6
/* 803CA450  41 80 02 EC */	blt lbl_803CA73C
/* 803CA454  88 61 00 1D */	lbz r3, 0x1d(r1)
/* 803CA458  88 1F 00 05 */	lbz r0, 5(r31)
/* 803CA45C  A0 C1 00 1E */	lhz r6, 0x1e(r1)
/* 803CA460  54 65 40 2E */	slwi r5, r3, 8
/* 803CA464  88 E1 00 1B */	lbz r7, 0x1b(r1)
/* 803CA468  54 00 40 2E */	slwi r0, r0, 8
/* 803CA46C  88 9F 00 03 */	lbz r4, 3(r31)
/* 803CA470  54 C6 80 1E */	slwi r6, r6, 0x10
/* 803CA474  A0 7F 00 06 */	lhz r3, 6(r31)
/* 803CA478  7C A5 3A 14 */	add r5, r5, r7
/* 803CA47C  7C 80 22 14 */	add r4, r0, r4
/* 803CA480  54 60 80 1E */	slwi r0, r3, 0x10
/* 803CA484  7C A6 2A 14 */	add r5, r6, r5
/* 803CA488  7C 80 22 14 */	add r4, r0, r4
/* 803CA48C  7C 05 20 40 */	cmplw r5, r4
/* 803CA490  40 81 00 18 */	ble lbl_803CA4A8
/* 803CA494  7F E3 FB 78 */	mr r3, r31
/* 803CA498  38 81 00 18 */	addi r4, r1, 0x18
/* 803CA49C  48 03 C6 01 */	bl lbRTC_GetIntervalDays
/* 803CA4A0  7C 78 1B 78 */	mr r24, r3
/* 803CA4A4  48 00 00 20 */	b lbl_803CA4C4
lbl_803CA4A8:
/* 803CA4A8  40 80 00 18 */	bge lbl_803CA4C0
/* 803CA4AC  7F E4 FB 78 */	mr r4, r31
/* 803CA4B0  38 61 00 18 */	addi r3, r1, 0x18
/* 803CA4B4  48 03 C5 E9 */	bl lbRTC_GetIntervalDays
/* 803CA4B8  7C 78 1B 78 */	mr r24, r3
/* 803CA4BC  48 00 00 08 */	b lbl_803CA4C4
lbl_803CA4C0:
/* 803CA4C0  3B 00 00 00 */	li r24, 0
lbl_803CA4C4:
/* 803CA4C4  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803CA4C8  7F E3 FB 78 */	mr r3, r31
/* 803CA4CC  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803CA4D0  38 A0 00 7F */	li r5, 0x7f
/* 803CA4D4  48 03 C3 65 */	bl lbRTC_IsEqualTime
/* 803CA4D8  2C 03 00 00 */	cmpwi r3, 0
/* 803CA4DC  40 82 00 0C */	bne lbl_803CA4E8
/* 803CA4E0  2C 18 00 03 */	cmpwi r24, 3
/* 803CA4E4  41 80 02 58 */	blt lbl_803CA73C
lbl_803CA4E8:
/* 803CA4E8  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803CA4EC  7F C3 F3 78 */	mr r3, r30
/* 803CA4F0  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803CA4F4  38 A0 00 7F */	li r5, 0x7f
/* 803CA4F8  48 03 C3 41 */	bl lbRTC_IsEqualTime
/* 803CA4FC  2C 03 00 00 */	cmpwi r3, 0
/* 803CA500  40 82 00 34 */	bne lbl_803CA534
/* 803CA504  A0 7E 00 06 */	lhz r3, 6(r30)
/* 803CA508  A0 01 00 1E */	lhz r0, 0x1e(r1)
/* 803CA50C  7C 03 00 40 */	cmplw r3, r0
/* 803CA510  40 82 00 24 */	bne lbl_803CA534
/* 803CA514  88 7E 00 05 */	lbz r3, 5(r30)
/* 803CA518  88 01 00 1D */	lbz r0, 0x1d(r1)
/* 803CA51C  7C 03 00 40 */	cmplw r3, r0
/* 803CA520  40 82 00 14 */	bne lbl_803CA534
/* 803CA524  88 7E 00 03 */	lbz r3, 3(r30)
/* 803CA528  88 01 00 1B */	lbz r0, 0x1b(r1)
/* 803CA52C  7C 03 00 40 */	cmplw r3, r0
/* 803CA530  41 82 02 0C */	beq lbl_803CA73C
lbl_803CA534:
/* 803CA534  3B 20 00 00 */	li r25, 0
lbl_803CA538:
/* 803CA538  7F A3 EB 78 */	mr r3, r29
/* 803CA53C  48 00 0E A1 */	bl mNpc_CheckFreeAnimalPersonalID
/* 803CA540  2C 03 00 00 */	cmpwi r3, 0
/* 803CA544  40 82 00 60 */	bne lbl_803CA5A4
/* 803CA548  3B 00 00 00 */	li r24, 0
/* 803CA54C  3B C0 00 00 */	li r30, 0
lbl_803CA550:
/* 803CA550  7C BD F2 14 */	add r5, r29, r30
/* 803CA554  A0 1C 00 0A */	lhz r0, 0xa(r28)
/* 803CA558  A0 65 00 22 */	lhz r3, 0x22(r5)
/* 803CA55C  7C 03 00 40 */	cmplw r3, r0
/* 803CA560  40 82 00 34 */	bne lbl_803CA594
/* 803CA564  7F 84 E3 78 */	mr r4, r28
/* 803CA568  38 65 00 18 */	addi r3, r5, 0x18
/* 803CA56C  4B FE 92 A1 */	bl mLd_CheckCmpLandName
/* 803CA570  2C 03 00 00 */	cmpwi r3, 0
/* 803CA574  41 82 00 20 */	beq lbl_803CA594
/* 803CA578  2C 1B 00 0F */	cmpwi r27, 0xf
/* 803CA57C  41 82 01 C0 */	beq lbl_803CA73C
/* 803CA580  38 61 00 60 */	addi r3, r1, 0x60
/* 803CA584  3B 7B 00 01 */	addi r27, r27, 1
/* 803CA588  7F 23 D1 2E */	stwx r25, r3, r26
/* 803CA58C  3B 5A 00 04 */	addi r26, r26, 4
/* 803CA590  48 00 00 14 */	b lbl_803CA5A4
lbl_803CA594:
/* 803CA594  3B 18 00 01 */	addi r24, r24, 1
/* 803CA598  3B DE 01 38 */	addi r30, r30, 0x138
/* 803CA59C  2C 18 00 07 */	cmpwi r24, 7
/* 803CA5A0  41 80 FF B0 */	blt lbl_803CA550
lbl_803CA5A4:
/* 803CA5A4  3B 39 00 01 */	addi r25, r25, 1
/* 803CA5A8  3B BD 09 88 */	addi r29, r29, 0x988
/* 803CA5AC  2C 19 00 0F */	cmpwi r25, 0xf
/* 803CA5B0  41 80 FF 88 */	blt lbl_803CA538
/* 803CA5B4  2C 1B 00 00 */	cmpwi r27, 0
/* 803CA5B8  41 82 01 84 */	beq lbl_803CA73C
/* 803CA5BC  4B C9 27 39 */	bl fqrand
/* 803CA5C0  3C 60 80 64 */	lis r3, lit_556@ha /* 0x8064289C@ha */
/* 803CA5C4  C0 03 28 9C */	lfs f0, lit_556@l(r3)  /* 0x8064289C@l */
/* 803CA5C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803CA5CC  40 80 01 70 */	bge lbl_803CA73C
/* 803CA5D0  38 00 00 00 */	li r0, 0
/* 803CA5D4  90 01 00 10 */	stw r0, 0x10(r1)
/* 803CA5D8  90 01 00 0C */	stw r0, 0xc(r1)
/* 803CA5DC  4B C9 27 19 */	bl fqrand
/* 803CA5E0  3C 60 80 64 */	lis r3, lit_557@ha /* 0x806428A0@ha */
/* 803CA5E4  C0 03 28 A0 */	lfs f0, lit_557@l(r3)  /* 0x806428A0@l */
/* 803CA5E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803CA5EC  40 80 00 10 */	bge lbl_803CA5FC
/* 803CA5F0  38 00 25 12 */	li r0, 0x2512
/* 803CA5F4  B0 01 00 08 */	sth r0, 8(r1)
/* 803CA5F8  48 00 00 44 */	b lbl_803CA63C
lbl_803CA5FC:
/* 803CA5FC  3C 60 80 64 */	lis r3, lit_558@ha /* 0x806428A4@ha */
/* 803CA600  38 81 00 08 */	addi r4, r1, 8
/* 803CA604  38 A3 28 A4 */	addi r5, r3, lit_558@l /* 0x806428A4@l */
/* 803CA608  38 60 00 00 */	li r3, 0
/* 803CA60C  C0 05 00 00 */	lfs f0, 0(r5)
/* 803CA610  38 A0 00 01 */	li r5, 1
/* 803CA614  38 C0 00 00 */	li r6, 0
/* 803CA618  38 E0 00 00 */	li r7, 0
/* 803CA61C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 803CA620  39 00 00 00 */	li r8, 0
/* 803CA624  40 80 00 0C */	bge lbl_803CA630
/* 803CA628  39 20 00 05 */	li r9, 5
/* 803CA62C  48 00 00 08 */	b lbl_803CA634
lbl_803CA630:
/* 803CA630  39 20 00 03 */	li r9, 3
lbl_803CA634:
/* 803CA634  39 40 00 00 */	li r10, 0
/* 803CA638  48 01 DD A5 */	bl mSP_SelectRandomItem_New
lbl_803CA63C:
/* 803CA63C  A0 A1 00 08 */	lhz r5, 8(r1)
/* 803CA640  38 61 00 10 */	addi r3, r1, 0x10
/* 803CA644  38 81 00 0C */	addi r4, r1, 0xc
/* 803CA648  4B FE 0A F5 */	bl mFI_SetTreasure
/* 803CA64C  2C 03 00 00 */	cmpwi r3, 0
/* 803CA650  41 82 00 EC */	beq lbl_803CA73C
/* 803CA654  4B C9 26 A1 */	bl fqrand
/* 803CA658  6F 63 80 00 */	xoris r3, r27, 0x8000
/* 803CA65C  3C 00 43 30 */	lis r0, 0x4330
/* 803CA660  90 61 01 6C */	stw r3, 0x16c(r1)
/* 803CA664  3C 80 80 64 */	lis r4, lit_561@ha /* 0x806428AC@ha */
/* 803CA668  C8 44 28 AC */	lfd f2, lit_561@l(r4)  /* 0x806428AC@l */
/* 803CA66C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CA670  90 01 01 68 */	stw r0, 0x168(r1)
/* 803CA674  38 03 85 38 */	addi r0, r3, common_data@l /* 0x81138538@l */
/* 803CA678  38 E1 00 60 */	addi r7, r1, 0x60
/* 803CA67C  A0 81 00 08 */	lhz r4, 8(r1)
/* 803CA680  C8 01 01 68 */	lfd f0, 0x168(r1)
/* 803CA684  80 A1 00 10 */	lwz r5, 0x10(r1)
/* 803CA688  EC 00 10 28 */	fsubs f0, f0, f2
/* 803CA68C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 803CA690  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CA694  FC 00 00 1E */	fctiwz f0, f0
/* 803CA698  D8 01 01 70 */	stfd f0, 0x170(r1)
/* 803CA69C  81 01 01 74 */	lwz r8, 0x174(r1)
/* 803CA6A0  7C 68 DB D6 */	divw r3, r8, r27
/* 803CA6A4  7C 63 D9 D6 */	mullw r3, r3, r27
/* 803CA6A8  7C 63 40 50 */	subf r3, r3, r8
/* 803CA6AC  54 63 10 3A */	slwi r3, r3, 2
/* 803CA6B0  7C 67 18 2E */	lwzx r3, r7, r3
/* 803CA6B4  1C 63 09 88 */	mulli r3, r3, 0x988
/* 803CA6B8  7C 60 1A 14 */	add r3, r0, r3
/* 803CA6BC  3F 43 00 01 */	addis r26, r3, 1
/* 803CA6C0  3B 5A 74 38 */	addi r26, r26, 0x7438
/* 803CA6C4  7F 43 D3 78 */	mr r3, r26
/* 803CA6C8  4B FF FC 61 */	bl mNtc_set_treasure_string
/* 803CA6CC  38 61 01 5C */	addi r3, r1, 0x15c
/* 803CA6D0  38 81 00 18 */	addi r4, r1, 0x18
/* 803CA6D4  48 03 CB 61 */	bl lbRTC_TimeCopy
/* 803CA6D8  4B C9 26 1D */	bl fqrand
/* 803CA6DC  3C 60 80 64 */	lis r3, lit_559@ha /* 0x806428A8@ha */
/* 803CA6E0  88 1A 00 0D */	lbz r0, 0xd(r26)
/* 803CA6E4  C0 03 28 A8 */	lfs f0, lit_559@l(r3)  /* 0x806428A8@l */
/* 803CA6E8  39 00 00 03 */	li r8, 3
/* 803CA6EC  1C 00 00 03 */	mulli r0, r0, 3
/* 803CA6F0  38 61 00 40 */	addi r3, r1, 0x40
/* 803CA6F4  EC 00 00 72 */	fmuls f0, f0, f1
/* 803CA6F8  38 81 00 14 */	addi r4, r1, 0x14
/* 803CA6FC  38 A1 00 20 */	addi r5, r1, 0x20
/* 803CA700  38 C1 00 9C */	addi r6, r1, 0x9c
/* 803CA704  FC 00 00 1E */	fctiwz f0, f0
/* 803CA708  D8 01 01 78 */	stfd f0, 0x178(r1)
/* 803CA70C  81 21 01 7C */	lwz r9, 0x17c(r1)
/* 803CA710  7C E9 43 D6 */	divw r7, r9, r8
/* 803CA714  7C E7 41 D6 */	mullw r7, r7, r8
/* 803CA718  7C E7 48 50 */	subf r7, r7, r9
/* 803CA71C  7C E0 3A 14 */	add r7, r0, r7
/* 803CA720  38 E7 01 F0 */	addi r7, r7, 0x1f0
/* 803CA724  4B FE 80 11 */	bl mHandbill_Load_HandbillFromRom
/* 803CA728  38 61 00 9C */	addi r3, r1, 0x9c
/* 803CA72C  4B FF FB 05 */	bl mNtc_notice_write
/* 803CA730  7F E3 FB 78 */	mr r3, r31
/* 803CA734  38 81 00 18 */	addi r4, r1, 0x18
/* 803CA738  48 03 CA FD */	bl lbRTC_TimeCopy
lbl_803CA73C:
/* 803CA73C  39 61 01 A0 */	addi r11, r1, 0x1a0
/* 803CA740  4B CD 07 CD */	bl func_8009AF0C
/* 803CA744  80 01 01 A4 */	lwz r0, 0x1a4(r1)
/* 803CA748  7C 08 03 A6 */	mtlr r0
/* 803CA74C  38 21 01 A0 */	addi r1, r1, 0x1a0
/* 803CA750  4E 80 00 20 */	blr 
