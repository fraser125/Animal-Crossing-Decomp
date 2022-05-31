lbl_804AF188:
/* 804AF188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AF18C  7C 08 02 A6 */	mflr r0
/* 804AF190  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AF194  39 61 00 20 */	addi r11, r1, 0x20
/* 804AF198  4B BE BD 3D */	bl func_8009AED4
/* 804AF19C  7C 7F 1B 78 */	mr r31, r3
/* 804AF1A0  7C 9D 23 78 */	mr r29, r4
/* 804AF1A4  7C BE 2B 78 */	mr r30, r5
/* 804AF1A8  38 7D 1F 54 */	addi r3, r29, 0x1f54
/* 804AF1AC  38 9F 00 28 */	addi r4, r31, 0x28
/* 804AF1B0  4B F0 BD 0D */	bl xyz_t_move
/* 804AF1B4  38 00 00 34 */	li r0, 0x34
/* 804AF1B8  7F E3 FB 78 */	mr r3, r31
/* 804AF1BC  B0 1F 02 62 */	sth r0, 0x262(r31)
/* 804AF1C0  38 9F 00 28 */	addi r4, r31, 0x28
/* 804AF1C4  38 BF 02 18 */	addi r5, r31, 0x218
/* 804AF1C8  38 E0 00 01 */	li r7, 1
/* 804AF1CC  A8 DF 02 62 */	lha r6, 0x262(r31)
/* 804AF1D0  4B FF E9 91 */	bl aUKI_parabola_init
/* 804AF1D4  38 00 00 06 */	li r0, 6
/* 804AF1D8  90 1F 02 38 */	stw r0, 0x238(r31)
/* 804AF1DC  88 1F 02 B4 */	lbz r0, 0x2b4(r31)
/* 804AF1E0  28 00 00 00 */	cmplwi r0, 0
/* 804AF1E4  41 82 00 10 */	beq lbl_804AF1F4
/* 804AF1E8  38 00 00 00 */	li r0, 0
/* 804AF1EC  98 1F 02 B4 */	stb r0, 0x2b4(r31)
/* 804AF1F0  48 00 00 14 */	b lbl_804AF204
lbl_804AF1F4:
/* 804AF1F4  7F E3 FB 78 */	mr r3, r31
/* 804AF1F8  7F A4 EB 78 */	mr r4, r29
/* 804AF1FC  7F C5 07 34 */	extsh r5, r30
/* 804AF200  4B FF EB BD */	bl aUKI_effect_sibuki
lbl_804AF204:
/* 804AF204  38 9F 00 28 */	addi r4, r31, 0x28
/* 804AF208  38 60 01 0C */	li r3, 0x10c
/* 804AF20C  48 17 ED 9D */	bl sAdo_OngenTrgStart
/* 804AF210  39 61 00 20 */	addi r11, r1, 0x20
/* 804AF214  4B BE BD 0D */	bl func_8009AF20
/* 804AF218  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AF21C  7C 08 03 A6 */	mtlr r0
/* 804AF220  38 21 00 20 */	addi r1, r1, 0x20
/* 804AF224  4E 80 00 20 */	blr 
