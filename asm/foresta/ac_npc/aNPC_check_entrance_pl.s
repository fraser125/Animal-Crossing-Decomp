lbl_8052F394:
/* 8052F394  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8052F398  7C 08 02 A6 */	mflr r0
/* 8052F39C  90 01 00 34 */	stw r0, 0x34(r1)
/* 8052F3A0  39 61 00 30 */	addi r11, r1, 0x30
/* 8052F3A4  4B B6 BB 31 */	bl func_8009AED4
/* 8052F3A8  7C 9D 23 78 */	mr r29, r4
/* 8052F3AC  7C BE 2B 78 */	mr r30, r5
/* 8052F3B0  4B EA A2 91 */	bl get_player_actor_withoutCheck
/* 8052F3B4  28 03 00 00 */	cmplwi r3, 0
/* 8052F3B8  3B E0 00 00 */	li r31, 0
/* 8052F3BC  40 82 00 0C */	bne lbl_8052F3C8
/* 8052F3C0  3B E0 00 01 */	li r31, 1
/* 8052F3C4  48 00 00 5C */	b lbl_8052F420
lbl_8052F3C8:
/* 8052F3C8  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 8052F3CC  38 81 00 08 */	addi r4, r1, 8
/* 8052F3D0  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 8052F3D4  38 A1 00 10 */	addi r5, r1, 0x10
/* 8052F3D8  90 C1 00 10 */	stw r6, 0x10(r1)
/* 8052F3DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052F3E0  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8052F3E4  38 61 00 0C */	addi r3, r1, 0xc
/* 8052F3E8  90 01 00 18 */	stw r0, 0x18(r1)
/* 8052F3EC  4B E7 5F 7D */	bl mFI_Wpos2UtNum
/* 8052F3F0  2C 03 00 01 */	cmpwi r3, 1
/* 8052F3F4  40 82 00 2C */	bne lbl_8052F420
/* 8052F3F8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8052F3FC  7C 00 E8 00 */	cmpw r0, r29
/* 8052F400  40 82 00 20 */	bne lbl_8052F420
/* 8052F404  80 61 00 08 */	lwz r3, 8(r1)
/* 8052F408  7C 03 F0 00 */	cmpw r3, r30
/* 8052F40C  41 82 00 10 */	beq lbl_8052F41C
/* 8052F410  38 1E 00 01 */	addi r0, r30, 1
/* 8052F414  7C 03 00 00 */	cmpw r3, r0
/* 8052F418  40 82 00 08 */	bne lbl_8052F420
lbl_8052F41C:
/* 8052F41C  3B E0 00 01 */	li r31, 1
lbl_8052F420:
/* 8052F420  7F E3 FB 78 */	mr r3, r31
/* 8052F424  39 61 00 30 */	addi r11, r1, 0x30
/* 8052F428  4B B6 BA F9 */	bl func_8009AF20
/* 8052F42C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8052F430  7C 08 03 A6 */	mtlr r0
/* 8052F434  38 21 00 30 */	addi r1, r1, 0x30
/* 8052F438  4E 80 00 20 */	blr 
