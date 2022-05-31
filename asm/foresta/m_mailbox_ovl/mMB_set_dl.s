lbl_805E5BA0:
/* 805E5BA0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E5BA4  7C 08 02 A6 */	mflr r0
/* 805E5BA8  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E5BAC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805E5BB0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805E5BB4  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805E5BB8  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805E5BBC  39 61 00 20 */	addi r11, r1, 0x20
/* 805E5BC0  4B AB 53 15 */	bl func_8009AED4
/* 805E5BC4  7C 87 23 78 */	mr r7, r4
/* 805E5BC8  7C 7D 1B 78 */	mr r29, r3
/* 805E5BCC  C3 E4 00 18 */	lfs f31, 0x18(r4)
/* 805E5BD0  7C BE 2B 78 */	mr r30, r5
/* 805E5BD4  C3 C4 00 1C */	lfs f30, 0x1c(r4)
/* 805E5BD8  7C DF 33 78 */	mr r31, r6
/* 805E5BDC  FC 20 F8 90 */	fmr f1, f31
/* 805E5BE0  7F C3 F3 78 */	mr r3, r30
/* 805E5BE4  FC 40 F0 90 */	fmr f2, f30
/* 805E5BE8  7F A4 EB 78 */	mr r4, r29
/* 805E5BEC  7C E5 3B 78 */	mr r5, r7
/* 805E5BF0  4B FF FB FD */	bl mMB_set_frame_dl
/* 805E5BF4  FC 20 F8 90 */	fmr f1, f31
/* 805E5BF8  7F C3 F3 78 */	mr r3, r30
/* 805E5BFC  FC 40 F0 90 */	fmr f2, f30
/* 805E5C00  7F A4 EB 78 */	mr r4, r29
/* 805E5C04  4B FF FD 99 */	bl mMB_set_mail
/* 805E5C08  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 805E5C0C  7F C3 F3 78 */	mr r3, r30
/* 805E5C10  7F E4 FB 78 */	mr r4, r31
/* 805E5C14  38 A0 00 0B */	li r5, 0xb
/* 805E5C18  81 86 09 20 */	lwz r12, 0x920(r6)
/* 805E5C1C  7D 89 03 A6 */	mtctr r12
/* 805E5C20  4E 80 04 21 */	bctrl 
/* 805E5C24  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805E5C28  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805E5C2C  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805E5C30  39 61 00 20 */	addi r11, r1, 0x20
/* 805E5C34  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805E5C38  4B AB 52 E9 */	bl func_8009AF20
/* 805E5C3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E5C40  7C 08 03 A6 */	mtlr r0
/* 805E5C44  38 21 00 40 */	addi r1, r1, 0x40
/* 805E5C48  4E 80 00 20 */	blr 
