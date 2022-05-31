lbl_803DADDC:
/* 803DADDC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803DADE0  7C 08 02 A6 */	mflr r0
/* 803DADE4  90 01 00 34 */	stw r0, 0x34(r1)
/* 803DADE8  39 61 00 30 */	addi r11, r1, 0x30
/* 803DADEC  4B CC 00 51 */	bl func_8009AE3C
/* 803DADF0  93 E1 00 14 */	stw r31, 0x14(r1)
/* 803DADF4  93 C1 00 10 */	stw r30, 0x10(r1)
/* 803DADF8  FF A0 08 90 */	fmr f29, f1
/* 803DADFC  7C 7E 1B 78 */	mr r30, r3
/* 803DAE00  FF C0 10 90 */	fmr f30, f2
/* 803DAE04  7C 9F 23 78 */	mr r31, r4
/* 803DAE08  FF E0 18 90 */	fmr f31, f3
/* 803DAE0C  4B FF E8 35 */	bl get_player_actor_withoutCheck
/* 803DAE10  81 83 12 C4 */	lwz r12, 0x12c4(r3)
/* 803DAE14  FC 20 E8 90 */	fmr f1, f29
/* 803DAE18  FC 40 F0 90 */	fmr f2, f30
/* 803DAE1C  7F C3 F3 78 */	mr r3, r30
/* 803DAE20  FC 60 F8 90 */	fmr f3, f31
/* 803DAE24  7F E4 FB 78 */	mr r4, r31
/* 803DAE28  38 A0 00 13 */	li r5, 0x13
/* 803DAE2C  7D 89 03 A6 */	mtctr r12
/* 803DAE30  4E 80 04 21 */	bctrl 
/* 803DAE34  39 61 00 30 */	addi r11, r1, 0x30
/* 803DAE38  4B CC 00 51 */	bl func_8009AE88
/* 803DAE3C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803DAE40  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 803DAE44  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 803DAE48  7C 08 03 A6 */	mtlr r0
/* 803DAE4C  38 21 00 30 */	addi r1, r1, 0x30
/* 803DAE50  4E 80 00 20 */	blr 
