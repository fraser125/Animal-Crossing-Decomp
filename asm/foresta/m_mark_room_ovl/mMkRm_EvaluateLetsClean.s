lbl_804D2610:
/* 804D2610  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D2614  7C 08 02 A6 */	mflr r0
/* 804D2618  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D261C  39 61 00 30 */	addi r11, r1, 0x30
/* 804D2620  4B BC 88 99 */	bl func_8009AEB8
/* 804D2624  7C 78 1B 78 */	mr r24, r3
/* 804D2628  7C 99 23 78 */	mr r25, r4
/* 804D262C  7C BA 2B 78 */	mr r26, r5
/* 804D2630  3B C0 00 00 */	li r30, 0
/* 804D2634  3B E0 00 00 */	li r31, 0
/* 804D2638  3A E0 00 00 */	li r23, 0
lbl_804D263C:
/* 804D263C  7F B9 B8 2E */	lwzx r29, r25, r23
/* 804D2640  28 1D 00 00 */	cmplwi r29, 0
/* 804D2644  41 82 01 58 */	beq lbl_804D279C
/* 804D2648  3B 60 00 01 */	li r27, 1
/* 804D264C  3A C0 00 10 */	li r22, 0x10
/* 804D2650  48 00 01 44 */	b lbl_804D2794
lbl_804D2654:
/* 804D2654  3B 80 00 01 */	li r28, 1
/* 804D2658  48 00 01 2C */	b lbl_804D2784
lbl_804D265C:
/* 804D265C  7C 1C B2 14 */	add r0, r28, r22
/* 804D2660  2C 1F 00 01 */	cmpwi r31, 1
/* 804D2664  54 04 08 3C */	slwi r4, r0, 1
/* 804D2668  7C 7D 22 2E */	lhzx r3, r29, r4
/* 804D266C  41 82 00 68 */	beq lbl_804D26D4
/* 804D2670  40 80 01 10 */	bge lbl_804D2780
/* 804D2674  2C 1F 00 00 */	cmpwi r31, 0
/* 804D2678  40 80 00 08 */	bge lbl_804D2680
/* 804D267C  48 00 01 04 */	b lbl_804D2780
lbl_804D2680:
/* 804D2680  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804D2684  2C 00 00 01 */	cmpwi r0, 1
/* 804D2688  41 82 00 F8 */	beq lbl_804D2780
/* 804D268C  2C 00 00 03 */	cmpwi r0, 3
/* 804D2690  41 82 00 F0 */	beq lbl_804D2780
/* 804D2694  28 03 FF FF */	cmplwi r3, 0xffff
/* 804D2698  41 82 00 E8 */	beq lbl_804D2780
/* 804D269C  28 03 00 00 */	cmplwi r3, 0
/* 804D26A0  41 82 00 E0 */	beq lbl_804D2780
/* 804D26A4  28 03 FF FE */	cmplwi r3, 0xfffe
/* 804D26A8  41 82 00 D8 */	beq lbl_804D2780
/* 804D26AC  28 03 FE 1B */	cmplwi r3, 0xfe1b
/* 804D26B0  41 82 00 D0 */	beq lbl_804D2780
/* 804D26B4  28 03 40 80 */	cmplwi r3, 0x4080
/* 804D26B8  41 82 00 C8 */	beq lbl_804D2780
/* 804D26BC  28 03 FE 1F */	cmplwi r3, 0xfe1f
/* 804D26C0  41 82 00 C0 */	beq lbl_804D2780
/* 804D26C4  28 03 FE 1C */	cmplwi r3, 0xfe1c
/* 804D26C8  41 82 00 B8 */	beq lbl_804D2780
/* 804D26CC  3B DE 00 01 */	addi r30, r30, 1
/* 804D26D0  48 00 00 B0 */	b lbl_804D2780
lbl_804D26D4:
/* 804D26D4  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804D26D8  2C 00 00 01 */	cmpwi r0, 1
/* 804D26DC  41 82 00 A4 */	beq lbl_804D2780
/* 804D26E0  2C 00 00 03 */	cmpwi r0, 3
/* 804D26E4  41 82 00 9C */	beq lbl_804D2780
/* 804D26E8  28 03 FF FF */	cmplwi r3, 0xffff
/* 804D26EC  41 82 00 94 */	beq lbl_804D2780
/* 804D26F0  28 03 00 00 */	cmplwi r3, 0
/* 804D26F4  41 82 00 8C */	beq lbl_804D2780
/* 804D26F8  28 03 FF FE */	cmplwi r3, 0xfffe
/* 804D26FC  41 82 00 84 */	beq lbl_804D2780
/* 804D2700  28 03 FE 1B */	cmplwi r3, 0xfe1b
/* 804D2704  41 82 00 7C */	beq lbl_804D2780
/* 804D2708  28 03 40 80 */	cmplwi r3, 0x4080
/* 804D270C  41 82 00 74 */	beq lbl_804D2780
/* 804D2710  28 03 FE 1F */	cmplwi r3, 0xfe1f
/* 804D2714  41 82 00 6C */	beq lbl_804D2780
/* 804D2718  28 03 FE 1C */	cmplwi r3, 0xfe1c
/* 804D271C  41 82 00 64 */	beq lbl_804D2780
/* 804D2720  28 03 2B 00 */	cmplwi r3, 0x2b00
/* 804D2724  41 80 00 0C */	blt lbl_804D2730
/* 804D2728  28 03 2B 0F */	cmplwi r3, 0x2b0f
/* 804D272C  40 81 00 54 */	ble lbl_804D2780
lbl_804D2730:
/* 804D2730  3C 60 81 1D */	lis r3, ftr_fg_table1@ha /* 0x811D2D18@ha */
/* 804D2734  38 63 2D 18 */	addi r3, r3, ftr_fg_table1@l /* 0x811D2D18@l */
/* 804D2738  7C 63 22 2E */	lhzx r3, r3, r4
/* 804D273C  28 03 00 00 */	cmplwi r3, 0
/* 804D2740  41 82 00 40 */	beq lbl_804D2780
/* 804D2744  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804D2748  2C 00 00 01 */	cmpwi r0, 1
/* 804D274C  41 82 00 0C */	beq lbl_804D2758
/* 804D2750  2C 00 00 03 */	cmpwi r0, 3
/* 804D2754  40 82 00 2C */	bne lbl_804D2780
lbl_804D2758:
/* 804D2758  4B F1 50 39 */	bl mRmTp_FtrItemNo2FtrIdx
/* 804D275C  3C 80 80 6A */	lis r4, mMkRm_ftr_info@ha /* 0x8069CEFC@ha */
/* 804D2760  54 63 10 3A */	slwi r3, r3, 2
/* 804D2764  38 04 CE FC */	addi r0, r4, mMkRm_ftr_info@l /* 0x8069CEFC@l */
/* 804D2768  7C 60 1A 14 */	add r3, r0, r3
/* 804D276C  88 03 00 03 */	lbz r0, 3(r3)
/* 804D2770  54 00 D7 BE */	rlwinm r0, r0, 0x1a, 0x1e, 0x1f
/* 804D2774  28 00 00 01 */	cmplwi r0, 1
/* 804D2778  40 82 00 08 */	bne lbl_804D2780
/* 804D277C  3B DE 00 01 */	addi r30, r30, 1
lbl_804D2780:
/* 804D2780  3B 9C 00 01 */	addi r28, r28, 1
lbl_804D2784:
/* 804D2784  7C 1C D0 00 */	cmpw r28, r26
/* 804D2788  41 80 FE D4 */	blt lbl_804D265C
/* 804D278C  3B 7B 00 01 */	addi r27, r27, 1
/* 804D2790  3A D6 00 10 */	addi r22, r22, 0x10
lbl_804D2794:
/* 804D2794  7C 1B D0 00 */	cmpw r27, r26
/* 804D2798  41 80 FE BC */	blt lbl_804D2654
lbl_804D279C:
/* 804D279C  3B FF 00 01 */	addi r31, r31, 1
/* 804D27A0  3A F7 00 04 */	addi r23, r23, 4
/* 804D27A4  2C 1F 00 02 */	cmpwi r31, 2
/* 804D27A8  41 80 FE 94 */	blt lbl_804D263C
/* 804D27AC  2C 1E 00 00 */	cmpwi r30, 0
/* 804D27B0  41 82 00 28 */	beq lbl_804D27D8
/* 804D27B4  80 98 00 00 */	lwz r4, 0(r24)
/* 804D27B8  3C 60 81 1D */	lis r3, data_811D2D10@ha /* 0x811D2D10@ha */
/* 804D27BC  38 A3 2D 10 */	addi r5, r3, data_811D2D10@l /* 0x811D2D10@l */
/* 804D27C0  3C 00 00 02 */	lis r0, 2
/* 804D27C4  7C 7E 20 50 */	subf r3, r30, r4
/* 804D27C8  90 78 00 00 */	stw r3, 0(r24)
/* 804D27CC  80 85 00 04 */	lwz r4, 4(r5)
/* 804D27D0  7C 80 03 78 */	or r0, r4, r0
/* 804D27D4  90 05 00 04 */	stw r0, 4(r5)
lbl_804D27D8:
/* 804D27D8  39 61 00 30 */	addi r11, r1, 0x30
/* 804D27DC  4B BC 87 29 */	bl func_8009AF04
/* 804D27E0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D27E4  7C 08 03 A6 */	mtlr r0
/* 804D27E8  38 21 00 30 */	addi r1, r1, 0x30
/* 804D27EC  4E 80 00 20 */	blr 
