lbl_804A0974:
/* 804A0974  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A0978  7C 08 02 A6 */	mflr r0
/* 804A097C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A0980  39 61 00 20 */	addi r11, r1, 0x20
/* 804A0984  4B BF A5 4D */	bl func_8009AED0
/* 804A0988  7C 7D 1B 78 */	mr r29, r3
/* 804A098C  7C 9E 23 78 */	mr r30, r4
/* 804A0990  7C BF 2B 78 */	mr r31, r5
/* 804A0994  7C DC 33 78 */	mr r28, r6
/* 804A0998  7C E3 3B 78 */	mr r3, r7
/* 804A099C  7D 04 43 78 */	mr r4, r8
/* 804A09A0  4B F0 67 B5 */	bl mFI_BkNumtoUtFGTop
/* 804A09A4  38 C0 00 00 */	li r6, 0
/* 804A09A8  38 00 01 00 */	li r0, 0x100
/* 804A09AC  90 DD 00 00 */	stw r6, 0(r29)
/* 804A09B0  38 80 00 00 */	li r4, 0
/* 804A09B4  38 E0 00 00 */	li r7, 0
/* 804A09B8  90 DE 00 00 */	stw r6, 0(r30)
/* 804A09BC  7C 09 03 A6 */	mtctr r0
lbl_804A09C0:
/* 804A09C0  7C 03 32 2E */	lhzx r0, r3, r6
/* 804A09C4  28 00 22 04 */	cmplwi r0, 0x2204
/* 804A09C8  41 80 00 48 */	blt lbl_804A0A10
/* 804A09CC  28 00 22 2B */	cmplwi r0, 0x222b
/* 804A09D0  41 81 00 40 */	bgt lbl_804A0A10
/* 804A09D4  7C 04 E0 00 */	cmpw r4, r28
/* 804A09D8  40 82 00 34 */	bne lbl_804A0A0C
/* 804A09DC  54 E0 E0 06 */	slwi r0, r7, 0x1c
/* 804A09E0  54 E5 0F FE */	srwi r5, r7, 0x1f
/* 804A09E4  7C 85 00 50 */	subf r4, r5, r0
/* 804A09E8  7C E0 26 70 */	srawi r0, r7, 4
/* 804A09EC  54 84 20 3E */	rotlwi r4, r4, 4
/* 804A09F0  7C 84 2A 14 */	add r4, r4, r5
/* 804A09F4  7C 00 01 94 */	addze r0, r0
/* 804A09F8  90 9D 00 00 */	stw r4, 0(r29)
/* 804A09FC  90 1E 00 00 */	stw r0, 0(r30)
/* 804A0A00  7C 03 32 2E */	lhzx r0, r3, r6
/* 804A0A04  B0 1F 00 00 */	sth r0, 0(r31)
/* 804A0A08  48 00 00 14 */	b lbl_804A0A1C
lbl_804A0A0C:
/* 804A0A0C  38 84 00 01 */	addi r4, r4, 1
lbl_804A0A10:
/* 804A0A10  38 E7 00 01 */	addi r7, r7, 1
/* 804A0A14  38 C6 00 02 */	addi r6, r6, 2
/* 804A0A18  42 00 FF A8 */	bdnz lbl_804A09C0
lbl_804A0A1C:
/* 804A0A1C  39 61 00 20 */	addi r11, r1, 0x20
/* 804A0A20  4B BF A4 FD */	bl func_8009AF1C
/* 804A0A24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A0A28  7C 08 03 A6 */	mtlr r0
/* 804A0A2C  38 21 00 20 */	addi r1, r1, 0x20
/* 804A0A30  4E 80 00 20 */	blr 
