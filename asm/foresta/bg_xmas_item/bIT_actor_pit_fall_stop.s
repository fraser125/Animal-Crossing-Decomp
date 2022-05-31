lbl_804CC738:
/* 804CC738  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CC73C  7C 08 02 A6 */	mflr r0
/* 804CC740  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CC744  39 61 00 40 */	addi r11, r1, 0x40
/* 804CC748  4B BC E7 8D */	bl func_8009AED4
/* 804CC74C  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804CC750  38 03 FF E7 */	addi r0, r3, -25
/* 804CC754  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804CC758  7C DE 33 78 */	mr r30, r6
/* 804CC75C  3C 63 00 02 */	addis r3, r3, 2
/* 804CC760  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 804CC764  80 C3 60 80 */	lwz r6, 0x6080(r3)
/* 804CC768  38 61 00 20 */	addi r3, r1, 0x20
/* 804CC76C  83 E6 00 00 */	lwz r31, 0(r6)
/* 804CC770  4B ED 8D 0D */	bl mFI_UtNum2CenterWpos
/* 804CC774  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804CC778  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804CC77C  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804CC780  38 83 61 E4 */	addi r4, r3, lit_664@l /* 0x806461E4@l */
/* 804CC784  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804CC788  38 61 00 14 */	addi r3, r1, 0x14
/* 804CC78C  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804CC790  C0 24 00 00 */	lfs f1, 0(r4)
/* 804CC794  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804CC798  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804CC79C  4B EC 31 FD */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804CC7A0  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804CC7A4  7F A3 EB 78 */	mr r3, r29
/* 804CC7A8  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 804CC7AC  38 81 00 08 */	addi r4, r1, 8
/* 804CC7B0  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804CC7B4  38 A0 00 00 */	li r5, 0
/* 804CC7B8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804CC7BC  90 E1 00 08 */	stw r7, 8(r1)
/* 804CC7C0  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804CC7C4  90 01 00 10 */	stw r0, 0x10(r1)
/* 804CC7C8  4B ED B0 69 */	bl mFI_SetFG_common
/* 804CC7CC  3C 7F 00 01 */	addis r3, r31, 1
/* 804CC7D0  7F C7 F3 78 */	mr r7, r30
/* 804CC7D4  38 C1 00 20 */	addi r6, r1, 0x20
/* 804CC7D8  38 80 00 03 */	li r4, 3
/* 804CC7DC  38 A0 00 11 */	li r5, 0x11
/* 804CC7E0  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804CC7E4  4B FF FE 11 */	bl bIT_actor_pit_entry_del
/* 804CC7E8  38 60 00 00 */	li r3, 0
/* 804CC7EC  39 61 00 40 */	addi r11, r1, 0x40
/* 804CC7F0  4B BC E7 31 */	bl func_8009AF20
/* 804CC7F4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CC7F8  7C 08 03 A6 */	mtlr r0
/* 804CC7FC  38 21 00 40 */	addi r1, r1, 0x40
/* 804CC800  4E 80 00 20 */	blr 
