lbl_803C6E7C:
/* 803C6E7C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803C6E80  7C 08 02 A6 */	mflr r0
/* 803C6E84  90 01 00 54 */	stw r0, 0x54(r1)
/* 803C6E88  39 61 00 50 */	addi r11, r1, 0x50
/* 803C6E8C  4B CD 40 31 */	bl func_8009AEBC
/* 803C6E90  7C 7C 1B 78 */	mr r28, r3
/* 803C6E94  7C 9D 23 78 */	mr r29, r4
/* 803C6E98  7F B8 EB 78 */	mr r24, r29
/* 803C6E9C  38 61 00 08 */	addi r3, r1, 8
/* 803C6EA0  3B DC 00 01 */	addi r30, r28, 1
/* 803C6EA4  3B 20 00 00 */	li r25, 0
/* 803C6EA8  38 80 00 06 */	li r4, 6
/* 803C6EAC  4B C9 61 BD */	bl bzero
/* 803C6EB0  57 9F 48 2C */	slwi r31, r28, 9
/* 803C6EB4  3A E0 00 00 */	li r23, 0
/* 803C6EB8  3B 60 00 00 */	li r27, 0
/* 803C6EBC  3F 40 00 02 */	lis r26, 0x0002 /* 0x00018025@ha */
lbl_803C6EC0:
/* 803C6EC0  7F C3 F3 78 */	mr r3, r30
/* 803C6EC4  38 97 00 01 */	addi r4, r23, 1
/* 803C6EC8  38 BA 80 25 */	addi r5, r26, 0x8025 /* 0x00018025@l */
/* 803C6ECC  4B FD F4 ED */	bl mFI_CheckBlockKind_OR
/* 803C6ED0  2C 03 00 00 */	cmpwi r3, 0
/* 803C6ED4  40 82 00 4C */	bne lbl_803C6F20
/* 803C6ED8  7F C3 F3 78 */	mr r3, r30
/* 803C6EDC  38 97 00 01 */	addi r4, r23, 1
/* 803C6EE0  4B FD F6 8D */	bl mFI_GetBkNum2ColTop
/* 803C6EE4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C6EE8  7F A5 EB 78 */	mr r5, r29
/* 803C6EEC  38 04 85 38 */	addi r0, r4, common_data@l /* 0x81138538@l */
/* 803C6EF0  7C 00 DA 14 */	add r0, r0, r27
/* 803C6EF4  7C 64 1B 78 */	mr r4, r3
/* 803C6EF8  7C 60 FA 14 */	add r3, r0, r31
/* 803C6EFC  3C 63 00 01 */	addis r3, r3, 1
/* 803C6F00  38 63 37 A8 */	addi r3, r3, 0x37a8
/* 803C6F04  4B FF FC 61 */	bl mMsm_GetDepositAbleNum_cancel
/* 803C6F08  38 81 00 08 */	addi r4, r1, 8
/* 803C6F0C  7C 64 B9 AE */	stbx r3, r4, r23
/* 803C6F10  7C 04 B8 AE */	lbzx r0, r4, r23
/* 803C6F14  28 00 00 00 */	cmplwi r0, 0
/* 803C6F18  41 82 00 08 */	beq lbl_803C6F20
/* 803C6F1C  3B 39 00 01 */	addi r25, r25, 1
lbl_803C6F20:
/* 803C6F20  3A F7 00 01 */	addi r23, r23, 1
/* 803C6F24  3B 7B 0A 00 */	addi r27, r27, 0xa00
/* 803C6F28  2C 17 00 06 */	cmpwi r23, 6
/* 803C6F2C  3B BD 00 A0 */	addi r29, r29, 0xa0
/* 803C6F30  41 80 FF 90 */	blt lbl_803C6EC0
/* 803C6F34  2C 19 00 00 */	cmpwi r25, 0
/* 803C6F38  40 81 00 C8 */	ble lbl_803C7000
/* 803C6F3C  7F 1D C3 78 */	mr r29, r24
/* 803C6F40  4B C9 5D B5 */	bl fqrand
/* 803C6F44  6F 20 80 00 */	xoris r0, r25, 0x8000
/* 803C6F48  3C 60 43 30 */	lis r3, 0x4330
/* 803C6F4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C6F50  3C 80 80 64 */	lis r4, lit_740@ha /* 0x8064285C@ha */
/* 803C6F54  C8 44 28 5C */	lfd f2, lit_740@l(r4)  /* 0x8064285C@l */
/* 803C6F58  38 00 00 06 */	li r0, 6
/* 803C6F5C  90 61 00 10 */	stw r3, 0x10(r1)
/* 803C6F60  38 61 00 08 */	addi r3, r1, 8
/* 803C6F64  3B 60 00 00 */	li r27, 0
/* 803C6F68  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 803C6F6C  EC 00 10 28 */	fsubs f0, f0, f2
/* 803C6F70  EC 00 00 72 */	fmuls f0, f0, f1
/* 803C6F74  FC 00 00 1E */	fctiwz f0, f0
/* 803C6F78  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 803C6F7C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 803C6F80  7C 09 03 A6 */	mtctr r0
lbl_803C6F84:
/* 803C6F84  8B 43 00 00 */	lbz r26, 0(r3)
/* 803C6F88  28 1A 00 00 */	cmplwi r26, 0
/* 803C6F8C  41 82 00 64 */	beq lbl_803C6FF0
/* 803C6F90  2C 04 00 00 */	cmpwi r4, 0
/* 803C6F94  40 82 00 58 */	bne lbl_803C6FEC
/* 803C6F98  7F C3 F3 78 */	mr r3, r30
/* 803C6F9C  38 9B 00 01 */	addi r4, r27, 1
/* 803C6FA0  4B FD F5 CD */	bl mFI_GetBkNum2ColTop
/* 803C6FA4  1C 1B 00 05 */	mulli r0, r27, 5
/* 803C6FA8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803C6FAC  7F A6 EB 78 */	mr r6, r29
/* 803C6FB0  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 803C6FB4  7C 1C 02 14 */	add r0, r28, r0
/* 803C6FB8  7C 64 1B 78 */	mr r4, r3
/* 803C6FBC  1C FB 0A 00 */	mulli r7, r27, 0xa00
/* 803C6FC0  54 00 28 34 */	slwi r0, r0, 5
/* 803C6FC4  7C 65 3A 14 */	add r3, r5, r7
/* 803C6FC8  7C A5 02 14 */	add r5, r5, r0
/* 803C6FCC  7C 63 FA 14 */	add r3, r3, r31
/* 803C6FD0  7F 47 D3 78 */	mr r7, r26
/* 803C6FD4  3C 63 00 01 */	addis r3, r3, 1
/* 803C6FD8  3C A5 00 02 */	addis r5, r5, 2
/* 803C6FDC  38 63 37 A8 */	addi r3, r3, 0x37a8
/* 803C6FE0  38 A5 0F 1C */	addi r5, r5, 0xf1c
/* 803C6FE4  4B FF FE 5D */	bl mMsm_DepositFossilBlock
/* 803C6FE8  48 00 00 18 */	b lbl_803C7000
lbl_803C6FEC:
/* 803C6FEC  38 84 FF FF */	addi r4, r4, -1
lbl_803C6FF0:
/* 803C6FF0  3B BD 00 A0 */	addi r29, r29, 0xa0
/* 803C6FF4  3B 7B 00 01 */	addi r27, r27, 1
/* 803C6FF8  38 63 00 01 */	addi r3, r3, 1
/* 803C6FFC  42 00 FF 88 */	bdnz lbl_803C6F84
lbl_803C7000:
/* 803C7000  39 61 00 50 */	addi r11, r1, 0x50
/* 803C7004  4B CD 3F 05 */	bl func_8009AF08
/* 803C7008  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803C700C  7C 08 03 A6 */	mtlr r0
/* 803C7010  38 21 00 50 */	addi r1, r1, 0x50
/* 803C7014  4E 80 00 20 */	blr 
