lbl_805C25EC:
/* 805C25EC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805C25F0  7C 08 02 A6 */	mflr r0
/* 805C25F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805C25F8  39 61 00 20 */	addi r11, r1, 0x20
/* 805C25FC  4B AD 88 D1 */	bl func_8009AECC
/* 805C2600  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805C2604  7C 7C 1B 78 */	mr r28, r3
/* 805C2608  7C 9D 23 78 */	mr r29, r4
/* 805C260C  83 65 09 28 */	lwz r27, 0x928(r5)
/* 805C2610  83 C5 09 94 */	lwz r30, 0x994(r5)
/* 805C2614  57 60 04 63 */	rlwinm. r0, r27, 0, 0x11, 0x11
/* 805C2618  83 E5 09 90 */	lwz r31, 0x990(r5)
/* 805C261C  41 82 00 34 */	beq lbl_805C2650
/* 805C2620  88 1F 00 04 */	lbz r0, 4(r31)
/* 805C2624  28 00 00 01 */	cmplwi r0, 1
/* 805C2628  40 82 00 0C */	bne lbl_805C2634
/* 805C262C  4B FF FA 69 */	bl func_805C2094
/* 805C2630  48 00 01 74 */	b lbl_805C27A4
lbl_805C2634:
/* 805C2634  38 60 00 00 */	li r3, 0
/* 805C2638  38 00 00 02 */	li r0, 2
/* 805C263C  98 7F 00 02 */	stb r3, 2(r31)
/* 805C2640  38 60 10 03 */	li r3, 0x1003
/* 805C2644  90 1D 00 04 */	stw r0, 4(r29)
/* 805C2648  48 06 B6 BD */	bl sAdo_SysTrgStart
/* 805C264C  48 00 01 58 */	b lbl_805C27A4
lbl_805C2650:
/* 805C2650  73 60 90 00 */	andi. r0, r27, 0x9000
/* 805C2654  41 82 00 CC */	beq lbl_805C2720
/* 805C2658  88 1E 00 03 */	lbz r0, 3(r30)
/* 805C265C  28 00 00 00 */	cmplwi r0, 0
/* 805C2660  40 82 00 18 */	bne lbl_805C2678
/* 805C2664  88 1E 00 05 */	lbz r0, 5(r30)
/* 805C2668  1C 60 00 16 */	mulli r3, r0, 0x16
/* 805C266C  3B 63 00 2C */	addi r27, r3, 0x2c
/* 805C2670  7F 7E DA 14 */	add r27, r30, r27
/* 805C2674  48 00 00 34 */	b lbl_805C26A8
lbl_805C2678:
/* 805C2678  28 00 00 02 */	cmplwi r0, 2
/* 805C267C  40 82 00 1C */	bne lbl_805C2698
/* 805C2680  88 7E 00 05 */	lbz r3, 5(r30)
/* 805C2684  38 03 00 08 */	addi r0, r3, 8
/* 805C2688  1C 60 00 16 */	mulli r3, r0, 0x16
/* 805C268C  3B 63 00 9A */	addi r27, r3, 0x9a
/* 805C2690  7F 7E DA 14 */	add r27, r30, r27
/* 805C2694  48 00 00 14 */	b lbl_805C26A8
lbl_805C2698:
/* 805C2698  88 1E 00 05 */	lbz r0, 5(r30)
/* 805C269C  1C 60 00 16 */	mulli r3, r0, 0x16
/* 805C26A0  3B 63 00 9A */	addi r27, r3, 0x9a
/* 805C26A4  7F 7E DA 14 */	add r27, r30, r27
lbl_805C26A8:
/* 805C26A8  7F 64 DB 78 */	mr r4, r27
/* 805C26AC  38 7F 00 08 */	addi r3, r31, 8
/* 805C26B0  4B DF A1 09 */	bl mMl_copy_header_name
/* 805C26B4  7F 63 DB 78 */	mr r3, r27
/* 805C26B8  38 80 00 08 */	li r4, 8
/* 805C26BC  38 A0 00 20 */	li r5, 0x20
/* 805C26C0  4B DF 9F 65 */	bl func_803BC624
/* 805C26C4  98 7F 00 03 */	stb r3, 3(r31)
/* 805C26C8  38 00 00 02 */	li r0, 2
/* 805C26CC  98 1F 00 02 */	stb r0, 2(r31)
/* 805C26D0  90 1D 00 04 */	stw r0, 4(r29)
/* 805C26D4  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805C26D8  80 63 09 90 */	lwz r3, 0x990(r3)
/* 805C26DC  88 03 00 04 */	lbz r0, 4(r3)
/* 805C26E0  28 00 00 01 */	cmplwi r0, 1
/* 805C26E4  40 82 00 30 */	bne lbl_805C2714
/* 805C26E8  80 FD 00 40 */	lwz r7, 0x40(r29)
/* 805C26EC  7F 83 E3 78 */	mr r3, r28
/* 805C26F0  81 1D 00 44 */	lwz r8, 0x44(r29)
/* 805C26F4  38 80 00 0A */	li r4, 0xa
/* 805C26F8  38 A0 00 00 */	li r5, 0
/* 805C26FC  38 C0 00 20 */	li r6, 0x20
/* 805C2700  4B E2 D0 29 */	bl mSM_open_submenu_new2
/* 805C2704  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805C2708  38 00 00 00 */	li r0, 0
/* 805C270C  80 63 09 90 */	lwz r3, 0x990(r3)
/* 805C2710  98 03 00 04 */	stb r0, 4(r3)
lbl_805C2714:
/* 805C2714  38 60 00 02 */	li r3, 2
/* 805C2718  48 06 B5 ED */	bl sAdo_SysTrgStart
/* 805C271C  48 00 00 88 */	b lbl_805C27A4
lbl_805C2720:
/* 805C2720  4B FF FB B9 */	bl mAD_move_cursol
/* 805C2724  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805C2728  80 63 09 90 */	lwz r3, 0x990(r3)
/* 805C272C  88 03 00 04 */	lbz r0, 4(r3)
/* 805C2730  28 00 00 00 */	cmplwi r0, 0
/* 805C2734  40 82 00 70 */	bne lbl_805C27A4
/* 805C2738  57 60 05 AD */	rlwinm. r0, r27, 0, 0x16, 0x16
/* 805C273C  41 82 00 20 */	beq lbl_805C275C
/* 805C2740  38 60 00 35 */	li r3, 0x35
/* 805C2744  48 06 B5 C1 */	bl sAdo_SysTrgStart
/* 805C2748  38 60 00 00 */	li r3, 0
/* 805C274C  38 00 00 02 */	li r0, 2
/* 805C2750  98 7F 00 02 */	stb r3, 2(r31)
/* 805C2754  90 1D 00 04 */	stw r0, 4(r29)
/* 805C2758  48 00 00 4C */	b lbl_805C27A4
lbl_805C275C:
/* 805C275C  57 60 05 EF */	rlwinm. r0, r27, 0, 0x17, 0x17
/* 805C2760  41 82 00 1C */	beq lbl_805C277C
/* 805C2764  38 60 00 35 */	li r3, 0x35
/* 805C2768  48 06 B5 9D */	bl sAdo_SysTrgStart
/* 805C276C  38 00 00 02 */	li r0, 2
/* 805C2770  98 1F 00 02 */	stb r0, 2(r31)
/* 805C2774  90 1D 00 04 */	stw r0, 4(r29)
/* 805C2778  48 00 00 2C */	b lbl_805C27A4
lbl_805C277C:
/* 805C277C  57 60 05 6B */	rlwinm. r0, r27, 0, 0x15, 0x15
/* 805C2780  41 82 00 24 */	beq lbl_805C27A4
/* 805C2784  38 00 00 01 */	li r0, 1
/* 805C2788  38 60 00 35 */	li r3, 0x35
/* 805C278C  98 1E 00 07 */	stb r0, 7(r30)
/* 805C2790  48 06 B5 75 */	bl sAdo_SysTrgStart
/* 805C2794  38 60 00 00 */	li r3, 0
/* 805C2798  38 00 00 02 */	li r0, 2
/* 805C279C  98 7F 00 02 */	stb r3, 2(r31)
/* 805C27A0  90 1D 00 04 */	stw r0, 4(r29)
lbl_805C27A4:
/* 805C27A4  39 61 00 20 */	addi r11, r1, 0x20
/* 805C27A8  4B AD 87 71 */	bl func_8009AF18
/* 805C27AC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805C27B0  7C 08 03 A6 */	mtlr r0
/* 805C27B4  38 21 00 20 */	addi r1, r1, 0x20
/* 805C27B8  4E 80 00 20 */	blr 
