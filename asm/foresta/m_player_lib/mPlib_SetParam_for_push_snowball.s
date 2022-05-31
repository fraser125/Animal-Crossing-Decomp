lbl_803DDCEC:
/* 803DDCEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DDCF0  7C 08 02 A6 */	mflr r0
/* 803DDCF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DDCF8  39 61 00 18 */	addi r11, r1, 0x18
/* 803DDCFC  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 803DDD00  4B CB D1 D5 */	bl func_8009AED4
/* 803DDD04  3C A0 81 1C */	lis r5, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803DDD08  FF E0 08 90 */	fmr f31, f1
/* 803DDD0C  83 E5 52 F0 */	lwz r31, data_811C52F0@l(r5)  /* 0x811C52F0@l */
/* 803DDD10  7C 7D 1B 78 */	mr r29, r3
/* 803DDD14  7C 9E 23 78 */	mr r30, r4
/* 803DDD18  7F E3 FB 78 */	mr r3, r31
/* 803DDD1C  4B FF B9 25 */	bl get_player_actor_withoutCheck
/* 803DDD20  81 83 13 20 */	lwz r12, 0x1320(r3)
/* 803DDD24  FC 20 F8 90 */	fmr f1, f31
/* 803DDD28  7F E3 FB 78 */	mr r3, r31
/* 803DDD2C  7F A4 EB 78 */	mr r4, r29
/* 803DDD30  7F C5 F3 78 */	mr r5, r30
/* 803DDD34  7D 89 03 A6 */	mtctr r12
/* 803DDD38  4E 80 04 21 */	bctrl 
/* 803DDD3C  39 61 00 18 */	addi r11, r1, 0x18
/* 803DDD40  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 803DDD44  4B CB D1 DD */	bl func_8009AF20
/* 803DDD48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DDD4C  7C 08 03 A6 */	mtlr r0
/* 803DDD50  38 21 00 20 */	addi r1, r1, 0x20
/* 803DDD54  4E 80 00 20 */	blr 
