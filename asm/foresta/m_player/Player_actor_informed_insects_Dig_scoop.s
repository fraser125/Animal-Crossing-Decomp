lbl_804F783C:
/* 804F783C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804F7840  7C 08 02 A6 */	mflr r0
/* 804F7844  3C 80 80 65 */	lis r4, lit_12238@ha /* 0x80648538@ha */
/* 804F7848  90 01 00 34 */	stw r0, 0x34(r1)
/* 804F784C  C0 24 85 38 */	lfs f1, lit_12238@l(r4)  /* 0x80648538@l */
/* 804F7850  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 804F7854  93 C1 00 28 */	stw r30, 0x28(r1)
/* 804F7858  7C 7E 1B 78 */	mr r30, r3
/* 804F785C  38 7E 01 74 */	addi r3, r30, 0x174
/* 804F7860  4B FD FD A1 */	bl Player_actor_Check_AnimationFrame
/* 804F7864  2C 03 00 00 */	cmpwi r3, 0
/* 804F7868  41 82 00 6C */	beq lbl_804F78D4
/* 804F786C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804F7870  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804F7874  3F E3 00 02 */	addis r31, r3, 2
/* 804F7878  80 7F 60 88 */	lwz r3, 0x6088(r31)
/* 804F787C  28 03 00 00 */	cmplwi r3, 0
/* 804F7880  41 82 00 54 */	beq lbl_804F78D4
/* 804F7884  80 03 00 14 */	lwz r0, 0x14(r3)
/* 804F7888  28 00 00 00 */	cmplwi r0, 0
/* 804F788C  41 82 00 48 */	beq lbl_804F78D4
/* 804F7890  80 DE 0D 18 */	lwz r6, 0xd18(r30)
/* 804F7894  38 61 00 0C */	addi r3, r1, 0xc
/* 804F7898  80 1E 0D 1C */	lwz r0, 0xd1c(r30)
/* 804F789C  38 81 00 08 */	addi r4, r1, 8
/* 804F78A0  38 A1 00 10 */	addi r5, r1, 0x10
/* 804F78A4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804F78A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F78AC  80 1E 0D 20 */	lwz r0, 0xd20(r30)
/* 804F78B0  90 01 00 18 */	stw r0, 0x18(r1)
/* 804F78B4  4B EA DA B5 */	bl mFI_Wpos2UtNum
/* 804F78B8  80 BF 60 88 */	lwz r5, 0x6088(r31)
/* 804F78BC  38 60 00 03 */	li r3, 3
/* 804F78C0  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804F78C4  81 85 00 14 */	lwz r12, 0x14(r5)
/* 804F78C8  80 A1 00 08 */	lwz r5, 8(r1)
/* 804F78CC  7D 89 03 A6 */	mtctr r12
/* 804F78D0  4E 80 04 21 */	bctrl 
lbl_804F78D4:
/* 804F78D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804F78D8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 804F78DC  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 804F78E0  7C 08 03 A6 */	mtlr r0
/* 804F78E4  38 21 00 30 */	addi r1, r1, 0x30
/* 804F78E8  4E 80 00 20 */	blr 
