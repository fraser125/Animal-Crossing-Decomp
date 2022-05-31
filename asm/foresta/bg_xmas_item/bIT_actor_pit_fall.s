lbl_804CC660:
/* 804CC660  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CC664  7C 08 02 A6 */	mflr r0
/* 804CC668  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CC66C  39 61 00 40 */	addi r11, r1, 0x40
/* 804CC670  4B BC E8 65 */	bl func_8009AED4
/* 804CC674  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804CC678  7C 7F 1B 78 */	mr r31, r3
/* 804CC67C  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804CC680  7C DD 33 78 */	mr r29, r6
/* 804CC684  3C C3 00 02 */	addis r6, r3, 2
/* 804CC688  38 61 00 20 */	addi r3, r1, 0x20
/* 804CC68C  80 C6 60 80 */	lwz r6, 0x6080(r6)
/* 804CC690  83 C6 00 00 */	lwz r30, 0(r6)
/* 804CC694  4B ED 8D E9 */	bl mFI_UtNum2CenterWpos
/* 804CC698  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804CC69C  3C 60 80 64 */	lis r3, lit_664@ha /* 0x806461E4@ha */
/* 804CC6A0  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804CC6A4  38 83 61 E4 */	addi r4, r3, lit_664@l /* 0x806461E4@l */
/* 804CC6A8  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804CC6AC  38 61 00 14 */	addi r3, r1, 0x14
/* 804CC6B0  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804CC6B4  C0 24 00 00 */	lfs f1, 0(r4)
/* 804CC6B8  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804CC6BC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804CC6C0  4B EC 32 D9 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804CC6C4  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804CC6C8  38 1F FF D6 */	addi r0, r31, -42
/* 804CC6CC  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804CC6D0  54 1F 04 3E */	clrlwi r31, r0, 0x10
/* 804CC6D4  80 E1 00 24 */	lwz r7, 0x24(r1)
/* 804CC6D8  38 1F 00 43 */	addi r0, r31, 0x43
/* 804CC6DC  80 C1 00 28 */	lwz r6, 0x28(r1)
/* 804CC6E0  54 03 04 3E */	clrlwi r3, r0, 0x10
/* 804CC6E4  90 81 00 08 */	stw r4, 8(r1)
/* 804CC6E8  38 81 00 08 */	addi r4, r1, 8
/* 804CC6EC  38 A0 00 00 */	li r5, 0
/* 804CC6F0  90 E1 00 0C */	stw r7, 0xc(r1)
/* 804CC6F4  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804CC6F8  4B ED B1 39 */	bl mFI_SetFG_common
/* 804CC6FC  3C 7E 00 01 */	addis r3, r30, 1
/* 804CC700  38 1F 00 11 */	addi r0, r31, 0x11
/* 804CC704  7F A7 EB 78 */	mr r7, r29
/* 804CC708  38 C1 00 20 */	addi r6, r1, 0x20
/* 804CC70C  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 804CC710  38 80 00 01 */	li r4, 1
/* 804CC714  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804CC718  4B FF EA 19 */	bl bIT_actor_pit_entry
/* 804CC71C  38 60 00 00 */	li r3, 0
/* 804CC720  39 61 00 40 */	addi r11, r1, 0x40
/* 804CC724  4B BC E7 FD */	bl func_8009AF20
/* 804CC728  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CC72C  7C 08 03 A6 */	mtlr r0
/* 804CC730  38 21 00 40 */	addi r1, r1, 0x40
/* 804CC734  4E 80 00 20 */	blr 
