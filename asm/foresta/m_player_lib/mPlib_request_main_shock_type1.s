lbl_803DABFC:
/* 803DABFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803DAC00  7C 08 02 A6 */	mflr r0
/* 803DAC04  90 01 00 24 */	stw r0, 0x24(r1)
/* 803DAC08  39 61 00 18 */	addi r11, r1, 0x18
/* 803DAC0C  DB E1 00 18 */	stfd f31, 0x18(r1)
/* 803DAC10  4B CC 02 C5 */	bl func_8009AED4
/* 803DAC14  FF E0 08 90 */	fmr f31, f1
/* 803DAC18  7C 7D 1B 78 */	mr r29, r3
/* 803DAC1C  7C 9E 23 78 */	mr r30, r4
/* 803DAC20  7C BF 2B 78 */	mr r31, r5
/* 803DAC24  4B FF EA 1D */	bl get_player_actor_withoutCheck
/* 803DAC28  81 83 12 D8 */	lwz r12, 0x12d8(r3)
/* 803DAC2C  FC 20 F8 90 */	fmr f1, f31
/* 803DAC30  7F A3 EB 78 */	mr r3, r29
/* 803DAC34  7F C4 F3 78 */	mr r4, r30
/* 803DAC38  7F E6 FB 78 */	mr r6, r31
/* 803DAC3C  38 A0 00 00 */	li r5, 0
/* 803DAC40  38 E0 00 0E */	li r7, 0xe
/* 803DAC44  7D 89 03 A6 */	mtctr r12
/* 803DAC48  4E 80 04 21 */	bctrl 
/* 803DAC4C  39 61 00 18 */	addi r11, r1, 0x18
/* 803DAC50  CB E1 00 18 */	lfd f31, 0x18(r1)
/* 803DAC54  4B CC 02 CD */	bl func_8009AF20
/* 803DAC58  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803DAC5C  7C 08 03 A6 */	mtlr r0
/* 803DAC60  38 21 00 20 */	addi r1, r1, 0x20
/* 803DAC64  4E 80 00 20 */	blr 
