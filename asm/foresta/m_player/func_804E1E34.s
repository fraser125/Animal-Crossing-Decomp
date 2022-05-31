lbl_804E1E34:
/* 804E1E34  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E1E38  7C 08 02 A6 */	mflr r0
/* 804E1E3C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E1E40  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 804E1E44  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 804E1E48  39 61 00 20 */	addi r11, r1, 0x20
/* 804E1E4C  4B BB 90 89 */	bl func_8009AED4
/* 804E1E50  3C A0 80 64 */	lis r5, lit_790@ha /* 0x80646668@ha */
/* 804E1E54  7C 9E 23 78 */	mr r30, r4
/* 804E1E58  83 E3 0F 30 */	lwz r31, 0xf30(r3)
/* 804E1E5C  7C 7D 1B 78 */	mr r29, r3
/* 804E1E60  C3 E5 66 68 */	lfs f31, lit_790@l(r5)  /* 0x80646668@l */
/* 804E1E64  7F C3 F3 78 */	mr r3, r30
/* 804E1E68  4B EF 78 09 */	bl mPlib_get_player_actor_main_index
/* 804E1E6C  2C 03 00 48 */	cmpwi r3, 0x48
/* 804E1E70  41 82 00 14 */	beq lbl_804E1E84
/* 804E1E74  7F C3 F3 78 */	mr r3, r30
/* 804E1E78  4B EF 77 F9 */	bl mPlib_get_player_actor_main_index
/* 804E1E7C  2C 03 00 49 */	cmpwi r3, 0x49
/* 804E1E80  40 82 00 0C */	bne lbl_804E1E8C
lbl_804E1E84:
/* 804E1E84  C0 1D 0D F8 */	lfs f0, 0xdf8(r29)
/* 804E1E88  EF FF 00 32 */	fmuls f31, f31, f0
lbl_804E1E8C:
/* 804E1E8C  28 1F 00 00 */	cmplwi r31, 0
/* 804E1E90  41 82 00 10 */	beq lbl_804E1EA0
/* 804E1E94  D3 FF 00 64 */	stfs f31, 0x64(r31)
/* 804E1E98  D3 FF 00 60 */	stfs f31, 0x60(r31)
/* 804E1E9C  D3 FF 00 5C */	stfs f31, 0x5c(r31)
lbl_804E1EA0:
/* 804E1EA0  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 804E1EA4  39 61 00 20 */	addi r11, r1, 0x20
/* 804E1EA8  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 804E1EAC  4B BB 90 75 */	bl func_8009AF20
/* 804E1EB0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E1EB4  7C 08 03 A6 */	mtlr r0
/* 804E1EB8  38 21 00 30 */	addi r1, r1, 0x30
/* 804E1EBC  4E 80 00 20 */	blr 
