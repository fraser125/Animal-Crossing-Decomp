lbl_804B63CC:
/* 804B63CC  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B63D0  7C 08 02 A6 */	mflr r0
/* 804B63D4  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B63D8  39 61 00 40 */	addi r11, r1, 0x40
/* 804B63DC  4B BE 4A F9 */	bl func_8009AED4
/* 804B63E0  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804B63E4  7C 7F 1B 78 */	mr r31, r3
/* 804B63E8  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804B63EC  7C DD 33 78 */	mr r29, r6
/* 804B63F0  3C C3 00 02 */	addis r6, r3, 2
/* 804B63F4  38 61 00 20 */	addi r3, r1, 0x20
/* 804B63F8  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 804B63FC  83 C6 00 00 */	lwz r30, 0(r6)
/* 804B6400  4B EE F0 7D */	bl mFI_UtNum2CenterWpos
/* 804B6404  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804B6408  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80645FF4@ha */
/* 804B640C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804B6410  38 83 5F F4 */	addi r4, r3, lit_664@l /* 0x80645FF4@l */
/* 804B6414  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804B6418  38 61 00 14 */	addi r3, r1, 0x14
/* 804B641C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804B6420  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B6424  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804B6428  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B642C  4B ED 95 6D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B6430  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804B6434  38 1F FF D6 */	addi r0, r31, -42
/* 804B6438  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804B643C  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 804B6440  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 804B6444  38 1F 00 43 */	addi r0, r31, 0x43
/* 804B6448  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804B644C  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804B6450  90 81 00 08 */	stw r4, 8(r1)
/* 804B6454  38 81 00 08 */	addi r4, r1, 8
/* 804B6458  38 A0 00 00 */	li r5, 0
/* 804B645C  90 E1 00 0C */	stw r7, 0xc(r1)
/* 804B6460  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804B6464  4B EF 13 CD */	bl mFI_SetFG_common
/* 804B6468  3C 7E 00 01 */	addis r3, r30, 1
/* 804B646C  38 1F 00 11 */	addi r0, r31, 0x11
/* 804B6470  7F A7 EB 78 */	mr r7, r29
/* 804B6474  38 C1 00 20 */	addi r6, r1, 0x20
/* 804B6478  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 804B647C  38 80 00 01 */	li r4, 1
/* 804B6480  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804B6484  4B FF EA 19 */	bl bIT_actor_pit_entry
/* 804B6488  38 60 00 00 */	li r3, 0
/* 804B648C  39 61 00 40 */	addi r11, r1, 0x40
/* 804B6490  4B BE 4A 91 */	bl func_8009AF20
/* 804B6494  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B6498  7C 08 03 A6 */	mtlr r0
/* 804B649C  38 21 00 40 */	addi r1, r1, 0x40
/* 804B64A0  4E 80 00 20 */	blr 
