lbl_8052F728:
/* 8052F728  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8052F72C  7C 08 02 A6 */	mflr r0
/* 8052F730  90 01 00 44 */	stw r0, 0x44(r1)
/* 8052F734  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8052F738  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8052F73C  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8052F740  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8052F744  39 61 00 20 */	addi r11, r1, 0x20
/* 8052F748  4B B6 B7 85 */	bl func_8009AECC
/* 8052F74C  7C 7B 1B 78 */	mr r27, r3
/* 8052F750  3C A0 80 65 */	lis r5, data_80649274@ha /* 0x80649274@ha */
/* 8052F754  3C 80 80 65 */	lis r4, lit_1660@ha /* 0x806492B8@ha */
/* 8052F758  3C 60 80 6A */	lis r3, crs_flg@ha /* 0x806A20B4@ha */
/* 8052F75C  8B BB 09 58 */	lbz r29, 0x958(r27)
/* 8052F760  3B C3 20 B4 */	addi r30, r3, crs_flg@l /* 0x806A20B4@l */
/* 8052F764  C3 C5 92 74 */	lfs f30, data_80649274@l(r5)  /* 0x80649274@l */
/* 8052F768  3B 80 00 00 */	li r28, 0
/* 8052F76C  C3 E4 92 B8 */	lfs f31, lit_1660@l(r4)  /* 0x806492B8@l */
/* 8052F770  3B E0 00 00 */	li r31, 0
lbl_8052F774:
/* 8052F774  7F 63 DB 78 */	mr r3, r27
/* 8052F778  7F 84 E3 78 */	mr r4, r28
/* 8052F77C  4B FF FE A5 */	bl aNPC_forward_check_sub
/* 8052F780  FC 01 F0 40 */	fcmpo cr0, f1, f30
/* 8052F784  4C 41 13 82 */	cror 2, 1, 2
/* 8052F788  40 82 00 08 */	bne lbl_8052F790
/* 8052F78C  48 00 00 08 */	b lbl_8052F794
lbl_8052F790:
/* 8052F790  FC 20 08 50 */	fneg f1, f1
lbl_8052F794:
/* 8052F794  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 8052F798  4C 41 13 82 */	cror 2, 1, 2
/* 8052F79C  40 82 00 0C */	bne lbl_8052F7A8
/* 8052F7A0  7C 1E F8 2E */	lwzx r0, r30, r31
/* 8052F7A4  7F BD 03 78 */	or r29, r29, r0
lbl_8052F7A8:
/* 8052F7A8  3B 9C 00 01 */	addi r28, r28, 1
/* 8052F7AC  3B FF 00 04 */	addi r31, r31, 4
/* 8052F7B0  2C 1C 00 02 */	cmpwi r28, 2
/* 8052F7B4  41 80 FF C0 */	blt lbl_8052F774
/* 8052F7B8  9B BB 09 58 */	stb r29, 0x958(r27)
/* 8052F7BC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8052F7C0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8052F7C4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8052F7C8  39 61 00 20 */	addi r11, r1, 0x20
/* 8052F7CC  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8052F7D0  4B B6 B7 49 */	bl func_8009AF18
/* 8052F7D4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8052F7D8  7C 08 03 A6 */	mtlr r0
/* 8052F7DC  38 21 00 40 */	addi r1, r1, 0x40
/* 8052F7E0  4E 80 00 20 */	blr 
