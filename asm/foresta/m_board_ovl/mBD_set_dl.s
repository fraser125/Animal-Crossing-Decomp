lbl_805C6274:
/* 805C6274  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C6278  7C 08 02 A6 */	mflr r0
/* 805C627C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C6280  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805C6284  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805C6288  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805C628C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805C6290  39 61 00 20 */	addi r11, r1, 0x20
/* 805C6294  4B AD 4C 3D */	bl func_8009AED0
/* 805C6298  7C BE 2B 78 */	mr r30, r5
/* 805C629C  7C 9D 23 78 */	mr r29, r4
/* 805C62A0  7C 7C 1B 78 */	mr r28, r3
/* 805C62A4  C3 E5 00 18 */	lfs f31, 0x18(r5)
/* 805C62A8  C3 C5 00 1C */	lfs f30, 0x1c(r5)
/* 805C62AC  7F C4 F3 78 */	mr r4, r30
/* 805C62B0  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805C62B4  FC 20 F8 90 */	fmr f1, f31
/* 805C62B8  83 FD 00 00 */	lwz r31, 0(r29)
/* 805C62BC  FC 40 F0 90 */	fmr f2, f30
/* 805C62C0  80 A3 09 90 */	lwz r5, 0x990(r3)
/* 805C62C4  7F E3 FB 78 */	mr r3, r31
/* 805C62C8  4B FF F2 15 */	bl mBD_set_frame_dl
/* 805C62CC  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 805C62D0  2C 00 00 01 */	cmpwi r0, 1
/* 805C62D4  41 82 00 20 */	beq lbl_805C62F4
/* 805C62D8  2C 00 00 04 */	cmpwi r0, 4
/* 805C62DC  41 82 00 18 */	beq lbl_805C62F4
/* 805C62E0  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805C62E4  80 63 09 90 */	lwz r3, 0x990(r3)
/* 805C62E8  88 03 00 04 */	lbz r0, 4(r3)
/* 805C62EC  28 00 00 00 */	cmplwi r0, 0
/* 805C62F0  40 82 00 30 */	bne lbl_805C6320
lbl_805C62F4:
/* 805C62F4  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805C62F8  7F E3 FB 78 */	mr r3, r31
/* 805C62FC  81 84 09 50 */	lwz r12, 0x950(r4)
/* 805C6300  7D 89 03 A6 */	mtctr r12
/* 805C6304  4E 80 04 21 */	bctrl 
/* 805C6308  FC 20 F8 90 */	fmr f1, f31
/* 805C630C  7F 83 E3 78 */	mr r3, r28
/* 805C6310  FC 40 F0 90 */	fmr f2, f30
/* 805C6314  7F A4 EB 78 */	mr r4, r29
/* 805C6318  7F C5 F3 78 */	mr r5, r30
/* 805C631C  4B FF FD CD */	bl mBD_set_character
lbl_805C6320:
/* 805C6320  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805C6324  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805C6328  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805C632C  39 61 00 20 */	addi r11, r1, 0x20
/* 805C6330  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805C6334  4B AD 4B E9 */	bl func_8009AF1C
/* 805C6338  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C633C  7C 08 03 A6 */	mtlr r0
/* 805C6340  38 21 00 40 */	addi r1, r1, 0x40
/* 805C6344  4E 80 00 20 */	blr 
