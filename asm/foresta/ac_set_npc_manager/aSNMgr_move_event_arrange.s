lbl_80497F84:
/* 80497F84  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80497F88  7C 08 02 A6 */	mflr r0
/* 80497F8C  90 01 00 44 */	stw r0, 0x44(r1)
/* 80497F90  39 61 00 40 */	addi r11, r1, 0x40
/* 80497F94  4B C0 2F 1D */	bl func_8009AEB0
/* 80497F98  7C 77 1B 78 */	mr r23, r3
/* 80497F9C  7C 98 23 78 */	mr r24, r4
/* 80497FA0  3B B7 03 18 */	addi r29, r23, 0x318
/* 80497FA4  83 E3 01 B8 */	lwz r31, 0x1b8(r3)
/* 80497FA8  83 C3 01 BC */	lwz r30, 0x1bc(r3)
/* 80497FAC  7C B9 2B 78 */	mr r25, r5
/* 80497FB0  A3 83 02 9C */	lhz r28, 0x29c(r3)
/* 80497FB4  3B 40 00 00 */	li r26, 0
/* 80497FB8  83 63 03 18 */	lwz r27, 0x318(r3)
/* 80497FBC  3A C0 00 00 */	li r22, 0
/* 80497FC0  48 00 00 8C */	b lbl_8049804C
lbl_80497FC4:
/* 80497FC4  80 BD 00 08 */	lwz r5, 8(r29)
/* 80497FC8  7F 46 D3 78 */	mr r6, r26
/* 80497FCC  38 61 00 0C */	addi r3, r1, 0xc
/* 80497FD0  38 81 00 08 */	addi r4, r1, 8
/* 80497FD4  4B F0 75 E1 */	bl mEvMN_GetEventSetUtInBlockMapIdx
/* 80497FD8  2C 03 00 01 */	cmpwi r3, 1
/* 80497FDC  40 82 00 64 */	bne lbl_80498040
/* 80497FE0  8A 9B 00 00 */	lbz r20, 0(r27)
/* 80497FE4  7F 04 C3 78 */	mr r4, r24
/* 80497FE8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 80497FEC  7F 25 CB 78 */	mr r5, r25
/* 80497FF0  1C 14 00 38 */	mulli r0, r20, 0x38
/* 80497FF4  80 E1 00 08 */	lwz r7, 8(r1)
/* 80497FF8  7E BE 02 14 */	add r21, r30, r0
/* 80497FFC  38 75 00 10 */	addi r3, r21, 0x10
/* 80498000  4B F0 DC 65 */	bl mFI_BkandUtNum2Wpos
/* 80498004  C0 15 00 10 */	lfs f0, 0x10(r21)
/* 80498008  7C BD B2 14 */	add r5, r29, r22
/* 8049800C  1C 74 09 88 */	mulli r3, r20, 0x988
/* 80498010  38 00 00 01 */	li r0, 1
/* 80498014  D0 05 00 10 */	stfs f0, 0x10(r5)
/* 80498018  38 80 00 00 */	li r4, 0
/* 8049801C  7C 00 A0 30 */	slw r0, r0, r20
/* 80498020  C0 15 00 14 */	lfs f0, 0x14(r21)
/* 80498024  7F 80 03 78 */	or r0, r28, r0
/* 80498028  38 63 08 E8 */	addi r3, r3, 0x8e8
/* 8049802C  D0 05 00 14 */	stfs f0, 0x14(r5)
/* 80498030  54 1C 04 3E */	clrlwi r28, r0, 0x10
/* 80498034  C0 15 00 18 */	lfs f0, 0x18(r21)
/* 80498038  D0 05 00 18 */	stfs f0, 0x18(r5)
/* 8049803C  7C 9F 19 AE */	stbx r4, r31, r3
lbl_80498040:
/* 80498040  3B 7B 00 01 */	addi r27, r27, 1
/* 80498044  3B 5A 00 01 */	addi r26, r26, 1
/* 80498048  3A D6 00 0C */	addi r22, r22, 0xc
lbl_8049804C:
/* 8049804C  80 1D 00 0C */	lwz r0, 0xc(r29)
/* 80498050  7C 1A 00 00 */	cmpw r26, r0
/* 80498054  41 80 FF 70 */	blt lbl_80497FC4
/* 80498058  B3 97 02 9C */	sth r28, 0x29c(r23)
/* 8049805C  39 61 00 40 */	addi r11, r1, 0x40
/* 80498060  4B C0 2E 9D */	bl func_8009AEFC
/* 80498064  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80498068  7C 08 03 A6 */	mtlr r0
/* 8049806C  38 21 00 40 */	addi r1, r1, 0x40
/* 80498070  4E 80 00 20 */	blr 
