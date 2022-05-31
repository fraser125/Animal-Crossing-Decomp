lbl_804B64A4:
/* 804B64A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B64A8  7C 08 02 A6 */	mflr r0
/* 804B64AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B64B0  39 61 00 40 */	addi r11, r1, 0x40
/* 804B64B4  4B BE 4A 21 */	bl func_8009AED4
/* 804B64B8  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 804B64BC  38 03 FF E7 */	addi r0, r3, -25
/* 804B64C0  38 67 85 38 */	addi r3, r7, common_data@l /* 0x81138538@l */
/* 804B64C4  7C DE 33 78 */	mr r30, r6
/* 804B64C8  3C 63 00 02 */	addis r3, r3, 2
/* 804B64CC  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 804B64D0  80 C3 60 80 */	lwz r6, 0x6080(r3)
/* 804B64D4  38 61 00 20 */	addi r3, r1, 0x20
/* 804B64D8  83 E6 00 00 */	lwz r31, 0(r6)
/* 804B64DC  4B EE EF A1 */	bl mFI_UtNum2CenterWpos
/* 804B64E0  80 C1 00 20 */	lwz r6, 0x20(r1)
/* 804B64E4  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80645FF4@ha */
/* 804B64E8  80 A1 00 24 */	lwz r5, 0x24(r1)
/* 804B64EC  38 83 5F F4 */	addi r4, r3, lit_664@l /* 0x80645FF4@l */
/* 804B64F0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804B64F4  38 61 00 14 */	addi r3, r1, 0x14
/* 804B64F8  90 C1 00 14 */	stw r6, 0x14(r1)
/* 804B64FC  C0 24 00 00 */	lfs f1, 0(r4)
/* 804B6500  90 A1 00 18 */	stw r5, 0x18(r1)
/* 804B6504  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804B6508  4B ED 94 91 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos2
/* 804B650C  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804B6510  7F A3 EB 78 */	mr r3, r29
/* 804B6514  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 804B6518  38 81 00 08 */	addi r4, r1, 8
/* 804B651C  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804B6520  38 A0 00 00 */	li r5, 0
/* 804B6524  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804B6528  90 E1 00 08 */	stw r7, 8(r1)
/* 804B652C  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804B6530  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B6534  4B EF 12 FD */	bl mFI_SetFG_common
/* 804B6538  3C 7F 00 01 */	addis r3, r31, 1
/* 804B653C  7F C7 F3 78 */	mr r7, r30
/* 804B6540  38 C1 00 20 */	addi r6, r1, 0x20
/* 804B6544  38 80 00 03 */	li r4, 3
/* 804B6548  38 A0 00 11 */	li r5, 0x11
/* 804B654C  38 63 25 DC */	addi r3, r3, 0x25dc
/* 804B6550  4B FF FE 11 */	bl bIT_actor_pit_entry_del
/* 804B6554  38 60 00 00 */	li r3, 0
/* 804B6558  39 61 00 40 */	addi r11, r1, 0x40
/* 804B655C  4B BE 49 C5 */	bl func_8009AF20
/* 804B6560  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B6564  7C 08 03 A6 */	mtlr r0
/* 804B6568  38 21 00 40 */	addi r1, r1, 0x40
/* 804B656C  4E 80 00 20 */	blr 
