lbl_804B2660:
/* 804B2660  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804B2664  7C 08 02 A6 */	mflr r0
/* 804B2668  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B266C  39 61 00 30 */	addi r11, r1, 0x30
/* 804B2670  4B BE 88 61 */	bl func_8009AED0
/* 804B2674  7C 9D 23 78 */	mr r29, r4
/* 804B2678  7C 7C 1B 78 */	mr r28, r3
/* 804B267C  80 E4 00 00 */	lwz r7, 0(r4)
/* 804B2680  7C BE 2B 78 */	mr r30, r5
/* 804B2684  80 04 00 04 */	lwz r0, 4(r4)
/* 804B2688  7C DF 33 78 */	mr r31, r6
/* 804B268C  38 61 00 0C */	addi r3, r1, 0xc
/* 804B2690  38 81 00 08 */	addi r4, r1, 8
/* 804B2694  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804B2698  38 A1 00 10 */	addi r5, r1, 0x10
/* 804B269C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804B26A0  80 1D 00 08 */	lwz r0, 8(r29)
/* 804B26A4  90 01 00 18 */	stw r0, 0x18(r1)
/* 804B26A8  4B EF 2C C1 */	bl mFI_Wpos2UtNum
/* 804B26AC  2C 03 00 00 */	cmpwi r3, 0
/* 804B26B0  41 82 00 28 */	beq lbl_804B26D8
/* 804B26B4  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 804B26B8  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804B26BC  80 A1 00 08 */	lwz r5, 8(r1)
/* 804B26C0  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 804B26C4  38 C0 00 00 */	li r6, 0
/* 804B26C8  4B EF 4F 85 */	bl mFI_UtNumtoFGSet_common
/* 804B26CC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804B26D0  80 81 00 08 */	lwz r4, 8(r1)
/* 804B26D4  4B EF 68 BD */	bl mFI_UtNum2DepositOFF
lbl_804B26D8:
/* 804B26D8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B26DC  7F 84 E3 78 */	mr r4, r28
/* 804B26E0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B26E4  7F A5 EB 78 */	mr r5, r29
/* 804B26E8  3C 63 00 02 */	addis r3, r3, 2
/* 804B26EC  7F C6 F3 78 */	mr r6, r30
/* 804B26F0  80 63 60 80 */	lwz r3, 0x6080(r3)
/* 804B26F4  7F E7 FB 78 */	mr r7, r31
/* 804B26F8  39 00 00 01 */	li r8, 1
/* 804B26FC  39 20 00 00 */	li r9, 0
/* 804B2700  80 63 00 00 */	lwz r3, 0(r3)
/* 804B2704  3C 63 00 01 */	addis r3, r3, 1
/* 804B2708  38 63 37 B0 */	addi r3, r3, 0x37b0
/* 804B270C  48 00 00 71 */	bl bIT_actor_hole_effect_entry
/* 804B2710  39 61 00 30 */	addi r11, r1, 0x30
/* 804B2714  4B BE 88 09 */	bl func_8009AF1C
/* 804B2718  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B271C  7C 08 03 A6 */	mtlr r0
/* 804B2720  38 21 00 30 */	addi r1, r1, 0x30
/* 804B2724  4E 80 00 20 */	blr 
