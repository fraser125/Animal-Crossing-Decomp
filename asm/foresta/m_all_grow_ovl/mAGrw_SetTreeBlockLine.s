lbl_80510F88:
/* 80510F88  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80510F8C  7C 08 02 A6 */	mflr r0
/* 80510F90  90 01 00 44 */	stw r0, 0x44(r1)
/* 80510F94  39 61 00 40 */	addi r11, r1, 0x40
/* 80510F98  4B B8 9F 2D */	bl func_8009AEC4
/* 80510F9C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80510FA0  7C 9E 23 78 */	mr r30, r4
/* 80510FA4  54 7F 48 2C */	slwi r31, r3, 9
/* 80510FA8  3B A1 00 08 */	addi r29, r1, 8
/* 80510FAC  3B 65 85 38 */	addi r27, r5, common_data@l /* 0x81138538@l */
/* 80510FB0  3B 40 00 00 */	li r26, 0
/* 80510FB4  3B 20 00 00 */	li r25, 0
/* 80510FB8  3B 80 00 00 */	li r28, 0
lbl_80510FBC:
/* 80510FBC  7C 1B E2 14 */	add r0, r27, r28
/* 80510FC0  7C 60 FA 14 */	add r3, r0, r31
/* 80510FC4  3C 63 00 01 */	addis r3, r3, 1
/* 80510FC8  38 63 37 A8 */	addi r3, r3, 0x37a8
/* 80510FCC  4B FF FE 81 */	bl mAGrw_GetChangeAbleTreeNum2
/* 80510FD0  98 7D 00 00 */	stb r3, 0(r29)
/* 80510FD4  88 1D 00 00 */	lbz r0, 0(r29)
/* 80510FD8  28 00 00 00 */	cmplwi r0, 0
/* 80510FDC  41 82 00 08 */	beq lbl_80510FE4
/* 80510FE0  3B 5A 00 01 */	addi r26, r26, 1
lbl_80510FE4:
/* 80510FE4  3B 39 00 01 */	addi r25, r25, 1
/* 80510FE8  3B 9C 0A 00 */	addi r28, r28, 0xa00
/* 80510FEC  2C 19 00 06 */	cmpwi r25, 6
/* 80510FF0  3B BD 00 01 */	addi r29, r29, 1
/* 80510FF4  41 80 FF C8 */	blt lbl_80510FBC
/* 80510FF8  2C 1A 00 00 */	cmpwi r26, 0
/* 80510FFC  40 81 00 A0 */	ble lbl_8051109C
/* 80511000  4B B4 BC F5 */	bl fqrand
/* 80511004  6F 40 80 00 */	xoris r0, r26, 0x8000
/* 80511008  3C 60 43 30 */	lis r3, 0x4330
/* 8051100C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80511010  3C 80 80 65 */	lis r4, lit_1185@ha /* 0x80648FBC@ha */
/* 80511014  C8 44 8F BC */	lfd f2, lit_1185@l(r4)  /* 0x80648FBC@l */
/* 80511018  38 00 00 06 */	li r0, 6
/* 8051101C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80511020  38 61 00 08 */	addi r3, r1, 8
/* 80511024  38 A0 00 00 */	li r5, 0
/* 80511028  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 8051102C  EC 00 10 28 */	fsubs f0, f0, f2
/* 80511030  EC 00 00 72 */	fmuls f0, f0, f1
/* 80511034  FC 00 00 1E */	fctiwz f0, f0
/* 80511038  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8051103C  80 C1 00 1C */	lwz r6, 0x1c(r1)
/* 80511040  7C 09 03 A6 */	mtctr r0
lbl_80511044:
/* 80511044  88 83 00 00 */	lbz r4, 0(r3)
/* 80511048  28 04 00 00 */	cmplwi r4, 0
/* 8051104C  41 82 00 44 */	beq lbl_80511090
/* 80511050  2C 06 00 00 */	cmpwi r6, 0
/* 80511054  40 82 00 38 */	bne lbl_8051108C
/* 80511058  1C C5 0A 00 */	mulli r6, r5, 0xa00
/* 8051105C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 80511060  3C 60 80 6A */	lis r3, l_magrw_change_tree@ha /* 0x8069FA64@ha */
/* 80511064  38 05 85 38 */	addi r0, r5, common_data@l /* 0x81138538@l */
/* 80511068  7C 00 32 14 */	add r0, r0, r6
/* 8051106C  7F C5 F3 78 */	mr r5, r30
/* 80511070  38 C3 FA 64 */	addi r6, r3, l_magrw_change_tree@l /* 0x8069FA64@l */
/* 80511074  38 E0 00 03 */	li r7, 3
/* 80511078  7C 60 FA 14 */	add r3, r0, r31
/* 8051107C  3C 63 00 01 */	addis r3, r3, 1
/* 80511080  38 63 37 A8 */	addi r3, r3, 0x37a8
/* 80511084  4B FF FE 2D */	bl mAGrw_ChangeItemBlock2
/* 80511088  48 00 00 14 */	b lbl_8051109C
lbl_8051108C:
/* 8051108C  38 C6 FF FF */	addi r6, r6, -1
lbl_80511090:
/* 80511090  38 A5 00 01 */	addi r5, r5, 1
/* 80511094  38 63 00 01 */	addi r3, r3, 1
/* 80511098  42 00 FF AC */	bdnz lbl_80511044
lbl_8051109C:
/* 8051109C  39 61 00 40 */	addi r11, r1, 0x40
/* 805110A0  4B B8 9E 71 */	bl func_8009AF10
/* 805110A4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805110A8  7C 08 03 A6 */	mtlr r0
/* 805110AC  38 21 00 40 */	addi r1, r1, 0x40
/* 805110B0  4E 80 00 20 */	blr 
