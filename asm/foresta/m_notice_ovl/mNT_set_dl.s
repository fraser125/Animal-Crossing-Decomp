lbl_805EC204:
/* 805EC204  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805EC208  7C 08 02 A6 */	mflr r0
/* 805EC20C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805EC210  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805EC214  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805EC218  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805EC21C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805EC220  39 61 00 20 */	addi r11, r1, 0x20
/* 805EC224  4B AA EC A9 */	bl func_8009AECC
/* 805EC228  7C 7B 1B 78 */	mr r27, r3
/* 805EC22C  7C BD 2B 78 */	mr r29, r5
/* 805EC230  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805EC234  7C 9C 23 78 */	mr r28, r4
/* 805EC238  C3 E5 00 18 */	lfs f31, 0x18(r5)
/* 805EC23C  7F A4 EB 78 */	mr r4, r29
/* 805EC240  C3 C5 00 1C */	lfs f30, 0x1c(r5)
/* 805EC244  7F 85 E3 78 */	mr r5, r28
/* 805EC248  83 E6 09 B8 */	lwz r31, 0x9b8(r6)
/* 805EC24C  FC 20 F8 90 */	fmr f1, f31
/* 805EC250  83 DC 00 00 */	lwz r30, 0(r28)
/* 805EC254  FC 40 F0 90 */	fmr f2, f30
/* 805EC258  88 FF 00 04 */	lbz r7, 4(r31)
/* 805EC25C  7F C6 F3 78 */	mr r6, r30
/* 805EC260  4B FF FD 95 */	bl mNT_set_page_dl
/* 805EC264  88 FF 00 05 */	lbz r7, 5(r31)
/* 805EC268  88 1F 00 04 */	lbz r0, 4(r31)
/* 805EC26C  7C 07 00 40 */	cmplw r7, r0
/* 805EC270  41 82 00 40 */	beq lbl_805EC2B0
/* 805EC274  7C 00 38 40 */	cmplw r0, r7
/* 805EC278  40 81 00 14 */	ble lbl_805EC28C
/* 805EC27C  3C 60 80 65 */	lis r3, lit_533@ha /* 0x8064B6F4@ha */
/* 805EC280  C0 03 B6 F4 */	lfs f0, lit_533@l(r3)  /* 0x8064B6F4@l */
/* 805EC284  EC 3F 00 28 */	fsubs f1, f31, f0
/* 805EC288  48 00 00 10 */	b lbl_805EC298
lbl_805EC28C:
/* 805EC28C  3C 60 80 65 */	lis r3, lit_533@ha /* 0x8064B6F4@ha */
/* 805EC290  C0 03 B6 F4 */	lfs f0, lit_533@l(r3)  /* 0x8064B6F4@l */
/* 805EC294  EC 3F 00 2A */	fadds f1, f31, f0
lbl_805EC298:
/* 805EC298  FC 40 F0 90 */	fmr f2, f30
/* 805EC29C  7F 63 DB 78 */	mr r3, r27
/* 805EC2A0  7F A4 EB 78 */	mr r4, r29
/* 805EC2A4  7F 85 E3 78 */	mr r5, r28
/* 805EC2A8  7F C6 F3 78 */	mr r6, r30
/* 805EC2AC  4B FF FD 49 */	bl mNT_set_page_dl
lbl_805EC2B0:
/* 805EC2B0  80 1D 00 04 */	lwz r0, 4(r29)
/* 805EC2B4  2C 00 00 02 */	cmpwi r0, 2
/* 805EC2B8  41 82 00 1C */	beq lbl_805EC2D4
/* 805EC2BC  2C 00 00 03 */	cmpwi r0, 3
/* 805EC2C0  41 82 00 14 */	beq lbl_805EC2D4
/* 805EC2C4  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 805EC2C8  7F E3 FB 78 */	mr r3, r31
/* 805EC2CC  7F C4 F3 78 */	mr r4, r30
/* 805EC2D0  4B FF F5 49 */	bl mNT_set_key_dl
lbl_805EC2D4:
/* 805EC2D4  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805EC2D8  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805EC2DC  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805EC2E0  39 61 00 20 */	addi r11, r1, 0x20
/* 805EC2E4  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805EC2E8  4B AA EC 31 */	bl func_8009AF18
/* 805EC2EC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805EC2F0  7C 08 03 A6 */	mtlr r0
/* 805EC2F4  38 21 00 40 */	addi r1, r1, 0x40
/* 805EC2F8  4E 80 00 20 */	blr 
