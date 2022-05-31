lbl_805B342C:
/* 805B342C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B3430  7C 08 02 A6 */	mflr r0
/* 805B3434  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B3438  39 61 00 20 */	addi r11, r1, 0x20
/* 805B343C  4B AE 7A 99 */	bl func_8009AED4
/* 805B3440  7C 7D 1B 78 */	mr r29, r3
/* 805B3444  7C 9E 23 78 */	mr r30, r4
/* 805B3448  38 60 00 47 */	li r3, 0x47
/* 805B344C  38 80 00 0A */	li r4, 0xa
/* 805B3450  4B DE A9 7D */	bl mEv_get_save_area
/* 805B3454  7C 7F 1B 78 */	mr r31, r3
/* 805B3458  38 00 00 01 */	li r0, 1
/* 805B345C  98 03 00 14 */	stb r0, 0x14(r3)
/* 805B3460  38 60 01 68 */	li r3, 0x168
/* 805B3464  4B DC 87 21 */	bl mBGMPsComp_make_ps_quiet
/* 805B3468  7F C3 F3 78 */	mr r3, r30
/* 805B346C  4B E0 5F 05 */	bl staffroll_light_init
/* 805B3470  38 00 00 B4 */	li r0, 0xb4
/* 805B3474  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805B3478  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805B347C  B0 1D 09 98 */	sth r0, 0x998(r29)
/* 805B3480  3C 63 00 02 */	addis r3, r3, 2
/* 805B3484  80 63 60 84 */	lwz r3, 0x6084(r3)
/* 805B3488  28 03 00 00 */	cmplwi r3, 0
/* 805B348C  41 82 00 1C */	beq lbl_805B34A8
/* 805B3490  81 83 00 04 */	lwz r12, 4(r3)
/* 805B3494  38 80 00 00 */	li r4, 0
/* 805B3498  80 63 00 00 */	lwz r3, 0(r3)
/* 805B349C  38 A0 00 00 */	li r5, 0
/* 805B34A0  7D 89 03 A6 */	mtctr r12
/* 805B34A4  4E 80 04 21 */	bctrl 
lbl_805B34A8:
/* 805B34A8  A0 1F 00 02 */	lhz r0, 2(r31)
/* 805B34AC  38 A0 00 FF */	li r5, 0xff
/* 805B34B0  38 80 00 00 */	li r4, 0
/* 805B34B4  38 60 00 78 */	li r3, 0x78
/* 805B34B8  54 06 04 7E */	clrlwi r6, r0, 0x11
/* 805B34BC  38 00 01 00 */	li r0, 0x100
/* 805B34C0  B0 DF 00 02 */	sth r6, 2(r31)
/* 805B34C4  39 61 00 20 */	addi r11, r1, 0x20
/* 805B34C8  98 BD 09 A0 */	stb r5, 0x9a0(r29)
/* 805B34CC  B0 9D 09 9C */	sth r4, 0x99c(r29)
/* 805B34D0  B0 7F 00 00 */	sth r3, 0(r31)
/* 805B34D4  98 9D 09 AA */	stb r4, 0x9aa(r29)
/* 805B34D8  90 1D 08 40 */	stw r0, 0x840(r29)
/* 805B34DC  4B AE 7A 45 */	bl func_8009AF20
/* 805B34E0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B34E4  7C 08 03 A6 */	mtlr r0
/* 805B34E8  38 21 00 20 */	addi r1, r1, 0x20
/* 805B34EC  4E 80 00 20 */	blr 
