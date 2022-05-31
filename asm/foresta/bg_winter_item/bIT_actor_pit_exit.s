lbl_804C53EC:
/* 804C53EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804C53F0  7C 08 02 A6 */	mflr r0
/* 804C53F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 804C53F8  39 61 00 30 */	addi r11, r1, 0x30
/* 804C53FC  4B BD 5A D9 */	bl func_8009AED4
/* 804C5400  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804C5404  7C 7D 1B 78 */	mr r29, r3
/* 804C5408  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804C540C  7C DE 33 78 */	mr r30, r6
/* 804C5410  3C C3 00 02 */	addis r6, r3, 2
/* 804C5414  38 61 00 14 */	addi r3, r1, 0x14
/* 804C5418  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 804C541C  83 E6 00 00 */	lwz r31, 0(r6)
/* 804C5420  4B EE 00 5D */	bl mFI_UtNum2CenterWpos
/* 804C5424  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 804C5428  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646144@ha */
/* 804C542C  80 A1 00 18 */	lwz r5, 0x18(r1)
/* 804C5430  38 83 61 44 */	addi r4, r3, lit_664@l /* 0x80646144@l */
/* 804C5434  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804C5438  38 61 00 08 */	addi r3, r1, 8
/* 804C543C  90 C1 00 08 */	stw r6, 8(r1)
/* 804C5440  C0 24 00 00 */	lfs f1, 0(r4)
/* 804C5444  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804C5448  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C544C  4B EC A5 4D */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804C5450  38 1D FF EF */	addi r0, r29, -17
/* 804C5454  3C 7F 00 01 */	addis r3, r31, 1
/* 804C5458  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 804C545C  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 804C5460  38 04 00 11 */	addi r0, r4, 0x11
/* 804C5464  7F C7 F3 78 */	mr r7, r30
/* 804C5468  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 804C546C  38 C1 00 14 */	addi r6, r1, 0x14
/* 804C5470  38 80 00 04 */	li r4, 4
/* 804C5474  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804C5478  4B FF E8 A1 */	bl bIT_actor_pit_entry
/* 804C547C  38 60 00 00 */	li r3, 0
/* 804C5480  39 61 00 30 */	addi r11, r1, 0x30
/* 804C5484  4B BD 5A 9D */	bl func_8009AF20
/* 804C5488  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804C548C  7C 08 03 A6 */	mtlr r0
/* 804C5490  38 21 00 30 */	addi r1, r1, 0x30
/* 804C5494  4E 80 00 20 */	blr 
