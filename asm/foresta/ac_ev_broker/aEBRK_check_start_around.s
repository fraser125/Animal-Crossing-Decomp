lbl_80519F8C:
/* 80519F8C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80519F90  7C 08 02 A6 */	mflr r0
/* 80519F94  90 01 00 44 */	stw r0, 0x44(r1)
/* 80519F98  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 80519F9C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 80519FA0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 80519FA4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 80519FA8  39 61 00 20 */	addi r11, r1, 0x20
/* 80519FAC  4B B8 0F 1D */	bl func_8009AEC8
/* 80519FB0  7C 7A 1B 78 */	mr r26, r3
/* 80519FB4  3C 60 80 6A */	lis r3, part@ha /* 0x806A0078@ha */
/* 80519FB8  C3 FA 00 28 */	lfs f31, 0x28(r26)
/* 80519FBC  7C 9B 23 78 */	mr r27, r4
/* 80519FC0  C3 DA 00 30 */	lfs f30, 0x30(r26)
/* 80519FC4  3B C3 00 78 */	addi r30, r3, part@l /* 0x806A0078@l */
/* 80519FC8  3B 80 00 01 */	li r28, 1
/* 80519FCC  3B A0 00 00 */	li r29, 0
/* 80519FD0  3B E0 00 00 */	li r31, 0
lbl_80519FD4:
/* 80519FD4  7C 1E F8 2E */	lwzx r0, r30, r31
/* 80519FD8  FC 20 F8 90 */	fmr f1, f31
/* 80519FDC  FC 40 F0 90 */	fmr f2, f30
/* 80519FE0  7F 44 D3 78 */	mr r4, r26
/* 80519FE4  54 03 18 38 */	slwi r3, r0, 3
/* 80519FE8  38 03 1D B0 */	addi r0, r3, 0x1db0
/* 80519FEC  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80519FF0  4B FF FF 45 */	bl aEBRK_check_start_around_sub
/* 80519FF4  2C 03 00 00 */	cmpwi r3, 0
/* 80519FF8  40 82 00 0C */	bne lbl_8051A004
/* 80519FFC  3B 80 00 00 */	li r28, 0
/* 8051A000  48 00 00 14 */	b lbl_8051A014
lbl_8051A004:
/* 8051A004  3B BD 00 01 */	addi r29, r29, 1
/* 8051A008  3B FF 00 04 */	addi r31, r31, 4
/* 8051A00C  2C 1D 00 02 */	cmpwi r29, 2
/* 8051A010  41 80 FF C4 */	blt lbl_80519FD4
lbl_8051A014:
/* 8051A014  7F 83 E3 78 */	mr r3, r28
/* 8051A018  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8051A01C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8051A020  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8051A024  39 61 00 20 */	addi r11, r1, 0x20
/* 8051A028  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8051A02C  4B B8 0E E9 */	bl func_8009AF14
/* 8051A030  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8051A034  7C 08 03 A6 */	mtlr r0
/* 8051A038  38 21 00 40 */	addi r1, r1, 0x40
/* 8051A03C  4E 80 00 20 */	blr 
