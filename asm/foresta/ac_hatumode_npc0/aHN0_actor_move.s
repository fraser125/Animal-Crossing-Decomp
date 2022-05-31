lbl_8052AC64:
/* 8052AC64  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8052AC68  7C 08 02 A6 */	mflr r0
/* 8052AC6C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8052AC70  39 61 00 20 */	addi r11, r1, 0x20
/* 8052AC74  4B B7 02 61 */	bl func_8009AED4
/* 8052AC78  7C 7D 1B 78 */	mr r29, r3
/* 8052AC7C  7C 9E 23 78 */	mr r30, r4
/* 8052AC80  38 60 00 01 */	li r3, 1
/* 8052AC84  38 80 00 07 */	li r4, 7
/* 8052AC88  4B E7 31 45 */	bl mEv_get_save_area
/* 8052AC8C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8052AC90  7C 7F 1B 78 */	mr r31, r3
/* 8052AC94  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8052AC98  7F A3 EB 78 */	mr r3, r29
/* 8052AC9C  3C A4 00 02 */	addis r5, r4, 2
/* 8052ACA0  7F C4 F3 78 */	mr r4, r30
/* 8052ACA4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8052ACA8  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8052ACAC  7D 89 03 A6 */	mtctr r12
/* 8052ACB0  4E 80 04 21 */	bctrl 
/* 8052ACB4  38 00 00 14 */	li r0, 0x14
/* 8052ACB8  28 1F 00 00 */	cmplwi r31, 0
/* 8052ACBC  B0 1D 09 46 */	sth r0, 0x946(r29)
/* 8052ACC0  41 82 00 48 */	beq lbl_8052AD08
/* 8052ACC4  A0 7D 00 06 */	lhz r3, 6(r29)
/* 8052ACC8  28 03 D0 58 */	cmplwi r3, 0xd058
/* 8052ACCC  41 82 00 3C */	beq lbl_8052AD08
/* 8052ACD0  A0 1F 00 00 */	lhz r0, 0(r31)
/* 8052ACD4  28 00 00 02 */	cmplwi r0, 2
/* 8052ACD8  40 82 00 30 */	bne lbl_8052AD08
/* 8052ACDC  3C 63 FF FF */	addis r3, r3, 0xffff
/* 8052ACE0  A0 9F 00 02 */	lhz r4, 2(r31)
/* 8052ACE4  38 03 2F A8 */	addi r0, r3, 0x2fa8
/* 8052ACE8  38 60 00 01 */	li r3, 1
/* 8052ACEC  7C 63 00 30 */	slw r3, r3, r0
/* 8052ACF0  7C 80 18 39 */	and. r0, r4, r3
/* 8052ACF4  40 82 00 14 */	bne lbl_8052AD08
/* 8052ACF8  7C 80 1B 78 */	or r0, r4, r3
/* 8052ACFC  7F A3 EB 78 */	mr r3, r29
/* 8052AD00  B0 1F 00 02 */	sth r0, 2(r31)
/* 8052AD04  4B E4 97 3D */	bl Actor_delete
lbl_8052AD08:
/* 8052AD08  39 61 00 20 */	addi r11, r1, 0x20
/* 8052AD0C  4B B7 02 15 */	bl func_8009AF20
/* 8052AD10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8052AD14  7C 08 03 A6 */	mtlr r0
/* 8052AD18  38 21 00 20 */	addi r1, r1, 0x20
/* 8052AD1C  4E 80 00 20 */	blr 
