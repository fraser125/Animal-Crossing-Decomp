lbl_804AB6B4:
/* 804AB6B4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804AB6B8  7C 08 02 A6 */	mflr r0
/* 804AB6BC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804AB6C0  39 61 00 20 */	addi r11, r1, 0x20
/* 804AB6C4  4B BE F8 11 */	bl func_8009AED4
/* 804AB6C8  7C 7D 1B 78 */	mr r29, r3
/* 804AB6CC  7C 9E 23 78 */	mr r30, r4
/* 804AB6D0  38 60 00 0F */	li r3, 0xf
/* 804AB6D4  38 80 00 08 */	li r4, 8
/* 804AB6D8  4B EF 26 F5 */	bl mEv_get_save_area
/* 804AB6DC  7C 7F 1B 78 */	mr r31, r3
/* 804AB6E0  7F A3 EB 78 */	mr r3, r29
/* 804AB6E4  7F C4 F3 78 */	mr r4, r30
/* 804AB6E8  4B FF FA 79 */	bl aTKN1_turn_l_init
/* 804AB6EC  A0 7D 00 06 */	lhz r3, 6(r29)
/* 804AB6F0  38 80 08 00 */	li r4, 0x800
/* 804AB6F4  A0 BF 00 02 */	lhz r5, 2(r31)
/* 804AB6F8  39 61 00 20 */	addi r11, r1, 0x20
/* 804AB6FC  3C 63 FF FF */	addis r3, r3, 0xffff
/* 804AB700  38 03 2F D3 */	addi r0, r3, 0x2fd3
/* 804AB704  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 804AB708  7C 80 00 30 */	slw r0, r4, r0
/* 804AB70C  7C A0 00 78 */	andc r0, r5, r0
/* 804AB710  B0 1F 00 02 */	sth r0, 2(r31)
/* 804AB714  4B BE F8 0D */	bl func_8009AF20
/* 804AB718  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804AB71C  7C 08 03 A6 */	mtlr r0
/* 804AB720  38 21 00 20 */	addi r1, r1, 0x20
/* 804AB724  4E 80 00 20 */	blr 
