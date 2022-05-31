lbl_804BD750:
/* 804BD750  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BD754  7C 08 02 A6 */	mflr r0
/* 804BD758  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BD75C  39 61 00 40 */	addi r11, r1, 0x40
/* 804BD760  4B BD D7 75 */	bl func_8009AED4
/* 804BD764  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804BD768  7C 7F 1B 78 */	mr r31, r3
/* 804BD76C  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804BD770  7C DD 33 78 */	mr r29, r6
/* 804BD774  3C C3 00 02 */	addis r6, r3, 2
/* 804BD778  38 61 00 20 */	addi r3, r1, 0x20
/* 804BD77C  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 804BD780  83 C6 00 00 */	lwz r30, 0(r6)
/* 804BD784  4B EE 7C F9 */	bl mFI_UtNum2CenterWpos
/* 804BD788  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804BD78C  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80646094@ha */
/* 804BD790  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804BD794  38 83 60 94 */	addi r4, r3, lit_664@l /* 0x80646094@l */
/* 804BD798  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804BD79C  38 61 00 14 */	addi r3, r1, 0x14
/* 804BD7A0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804BD7A4  C0 24 00 00 */	lfs f1, 0(r4)
/* 804BD7A8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804BD7AC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804BD7B0  4B ED 21 E9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804BD7B4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804BD7B8  38 1F FF D6 */	addi r0, r31, -42
/* 804BD7BC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804BD7C0  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 804BD7C4  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 804BD7C8  38 1F 00 43 */	addi r0, r31, 0x43
/* 804BD7CC  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804BD7D0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804BD7D4  90 81 00 08 */	stw r4, 8(r1)
/* 804BD7D8  38 81 00 08 */	addi r4, r1, 8
/* 804BD7DC  38 A0 00 00 */	li r5, 0
/* 804BD7E0  90 E1 00 0C */	stw r7, 0xc(r1)
/* 804BD7E4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804BD7E8  4B EE A0 49 */	bl mFI_SetFG_common
/* 804BD7EC  3C 7E 00 01 */	addis r3, r30, 1
/* 804BD7F0  38 1F 00 11 */	addi r0, r31, 0x11
/* 804BD7F4  7F A7 EB 78 */	mr r7, r29
/* 804BD7F8  38 C1 00 20 */	addi r6, r1, 0x20
/* 804BD7FC  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 804BD800  38 80 00 01 */	li r4, 1
/* 804BD804  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804BD808  4B FF EA 19 */	bl bIT_actor_pit_entry
/* 804BD80C  38 60 00 00 */	li r3, 0
/* 804BD810  39 61 00 40 */	addi r11, r1, 0x40
/* 804BD814  4B BD D7 0D */	bl func_8009AF20
/* 804BD818  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BD81C  7C 08 03 A6 */	mtlr r0
/* 804BD820  38 21 00 40 */	addi r1, r1, 0x40
/* 804BD824  4E 80 00 20 */	blr 
