lbl_804FFAE0:
/* 804FFAE0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FFAE4  7C 08 02 A6 */	mflr r0
/* 804FFAE8  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FFAEC  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 804FFAF0  FF E0 08 90 */	fmr f31, f1
/* 804FFAF4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 804FFAF8  7C 7F 1B 78 */	mr r31, r3
/* 804FFAFC  4B FD 79 E1 */	bl Player_actor_Check_AnimationFrame_PerfectEquel
/* 804FFB00  FC 20 F8 90 */	fmr f1, f31
/* 804FFB04  7F E3 FB 78 */	mr r3, r31
/* 804FFB08  4B FF FF 65 */	bl Player_actor_SetEffect_Wash_car
/* 804FFB0C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FFB10  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 804FFB14  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 804FFB18  7C 08 03 A6 */	mtlr r0
/* 804FFB1C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FFB20  4E 80 00 20 */	blr 
