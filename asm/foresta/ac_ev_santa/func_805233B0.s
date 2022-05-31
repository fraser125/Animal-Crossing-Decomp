lbl_805233B0:
/* 805233B0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805233B4  7C 08 02 A6 */	mflr r0
/* 805233B8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805233BC  39 61 00 20 */	addi r11, r1, 0x20
/* 805233C0  4B B7 7B 15 */	bl func_8009AED4
/* 805233C4  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805233C8  7C 7D 1B 78 */	mr r29, r3
/* 805233CC  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805233D0  7C 9E 23 78 */	mr r30, r4
/* 805233D4  3F E5 00 02 */	addis r31, r5, 2
/* 805233D8  80 BF 60 4C */	lwz r5, 0x604c(r31)
/* 805233DC  81 85 00 CC */	lwz r12, 0xcc(r5)
/* 805233E0  7D 89 03 A6 */	mtctr r12
/* 805233E4  4E 80 04 21 */	bctrl 
/* 805233E8  2C 03 00 01 */	cmpwi r3, 1
/* 805233EC  40 82 00 8C */	bne lbl_80523478
/* 805233F0  80 9F 60 4C */	lwz r4, 0x604c(r31)
/* 805233F4  3C 60 80 6A */	lis r3, ct_data@ha /* 0x806A0B04@ha */
/* 805233F8  38 A3 0B 04 */	addi r5, r3, ct_data@l /* 0x806A0B04@l */
/* 805233FC  81 84 00 D0 */	lwz r12, 0xd0(r4)
/* 80523400  7F A3 EB 78 */	mr r3, r29
/* 80523404  7F C4 F3 78 */	mr r4, r30
/* 80523408  7D 89 03 A6 */	mtctr r12
/* 8052340C  4E 80 04 21 */	bctrl 
/* 80523410  3C 80 80 52 */	lis r4, aESNT_setupAction@ha /* 0x8052388C@ha */
/* 80523414  38 60 00 3D */	li r3, 0x3d
/* 80523418  38 04 38 8C */	addi r0, r4, aESNT_setupAction@l /* 0x8052388C@l */
/* 8052341C  38 80 00 00 */	li r4, 0
/* 80523420  90 1D 09 9C */	stw r0, 0x99c(r29)
/* 80523424  4B E7 A9 A9 */	bl mEv_get_save_area
/* 80523428  7C 7F 1B 79 */	or. r31, r3, r3
/* 8052342C  40 82 00 24 */	bne lbl_80523450
/* 80523430  38 60 00 3D */	li r3, 0x3d
/* 80523434  38 80 00 00 */	li r4, 0
/* 80523438  4B E7 A7 ED */	bl mEv_reserve_save_area
/* 8052343C  38 80 00 2A */	li r4, 0x2a
/* 80523440  7C 7F 1B 78 */	mr r31, r3
/* 80523444  4B B3 9C 25 */	bl bzero
/* 80523448  7F E3 FB 78 */	mr r3, r31
/* 8052344C  4B EB CC 41 */	bl mPr_ClearPersonalID
lbl_80523450:
/* 80523450  93 FD 09 A8 */	stw r31, 0x9a8(r29)
/* 80523454  38 60 00 3D */	li r3, 0x3d
/* 80523458  38 80 00 00 */	li r4, 0
/* 8052345C  4B E7 AC 81 */	bl mEv_get_common_area
/* 80523460  28 03 00 00 */	cmplwi r3, 0
/* 80523464  40 82 00 10 */	bne lbl_80523474
/* 80523468  38 60 00 3D */	li r3, 0x3d
/* 8052346C  38 80 00 00 */	li r4, 0
/* 80523470  4B E7 AB 85 */	bl mEv_reserve_common_area
lbl_80523474:
/* 80523474  90 7D 09 AC */	stw r3, 0x9ac(r29)
lbl_80523478:
/* 80523478  39 61 00 20 */	addi r11, r1, 0x20
/* 8052347C  4B B7 7A A5 */	bl func_8009AF20
/* 80523480  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80523484  7C 08 03 A6 */	mtlr r0
/* 80523488  38 21 00 20 */	addi r1, r1, 0x20
/* 8052348C  4E 80 00 20 */	blr 
