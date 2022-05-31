lbl_805D2648:
/* 805D2648  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805D264C  7C 08 02 A6 */	mflr r0
/* 805D2650  90 01 00 24 */	stw r0, 0x24(r1)
/* 805D2654  39 61 00 20 */	addi r11, r1, 0x20
/* 805D2658  4B AC 88 75 */	bl func_8009AECC
/* 805D265C  7C 7E 1B 78 */	mr r30, r3
/* 805D2660  7C 9F 23 78 */	mr r31, r4
/* 805D2664  88 03 06 A1 */	lbz r0, 0x6a1(r3)
/* 805D2668  2C 00 00 02 */	cmpwi r0, 2
/* 805D266C  41 82 00 94 */	beq lbl_805D2700
/* 805D2670  40 80 00 14 */	bge lbl_805D2684
/* 805D2674  2C 00 00 00 */	cmpwi r0, 0
/* 805D2678  41 82 00 1C */	beq lbl_805D2694
/* 805D267C  40 80 00 2C */	bge lbl_805D26A8
/* 805D2680  48 00 01 E8 */	b lbl_805D2868
lbl_805D2684:
/* 805D2684  2C 00 00 04 */	cmpwi r0, 4
/* 805D2688  41 82 01 40 */	beq lbl_805D27C8
/* 805D268C  40 80 01 DC */	bge lbl_805D2868
/* 805D2690  48 00 00 C4 */	b lbl_805D2754
lbl_805D2694:
/* 805D2694  80 9E 06 68 */	lwz r4, 0x668(r30)
/* 805D2698  80 BE 06 6C */	lwz r5, 0x66c(r30)
/* 805D269C  88 DE 06 A4 */	lbz r6, 0x6a4(r30)
/* 805D26A0  4B FF F9 21 */	bl mDE_farbado
/* 805D26A4  48 00 01 F8 */	b lbl_805D289C
lbl_805D26A8:
/* 805D26A8  3B 60 00 00 */	li r27, 0
lbl_805D26AC:
/* 805D26AC  7F 60 16 70 */	srawi r0, r27, 2
/* 805D26B0  3B 80 00 00 */	li r28, 0
/* 805D26B4  7C 00 01 94 */	addze r0, r0
/* 805D26B8  54 03 0F FE */	srwi r3, r0, 0x1f
/* 805D26BC  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805D26C0  7C 00 1A 78 */	xor r0, r0, r3
/* 805D26C4  7F A3 00 50 */	subf r29, r3, r0
lbl_805D26C8:
/* 805D26C8  2C 1D 00 00 */	cmpwi r29, 0
/* 805D26CC  40 82 00 18 */	bne lbl_805D26E4
/* 805D26D0  7F C3 F3 78 */	mr r3, r30
/* 805D26D4  7F 64 DB 78 */	mr r4, r27
/* 805D26D8  7F 85 E3 78 */	mr r5, r28
/* 805D26DC  7F E6 FB 78 */	mr r6, r31
/* 805D26E0  4B FF F8 41 */	bl mDE_set_pal_on_cursor
lbl_805D26E4:
/* 805D26E4  3B 9C 00 01 */	addi r28, r28, 1
/* 805D26E8  2C 1C 00 20 */	cmpwi r28, 0x20
/* 805D26EC  41 80 FF DC */	blt lbl_805D26C8
/* 805D26F0  3B 7B 00 01 */	addi r27, r27, 1
/* 805D26F4  2C 1B 00 20 */	cmpwi r27, 0x20
/* 805D26F8  41 80 FF B4 */	blt lbl_805D26AC
/* 805D26FC  48 00 01 A0 */	b lbl_805D289C
lbl_805D2700:
/* 805D2700  3B 80 00 00 */	li r28, 0
lbl_805D2704:
/* 805D2704  3B 60 00 00 */	li r27, 0
lbl_805D2708:
/* 805D2708  7F 60 16 70 */	srawi r0, r27, 2
/* 805D270C  7C 00 01 94 */	addze r0, r0
/* 805D2710  54 03 0F FE */	srwi r3, r0, 0x1f
/* 805D2714  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805D2718  7C 00 1A 78 */	xor r0, r0, r3
/* 805D271C  7C 03 00 51 */	subf. r0, r3, r0
/* 805D2720  40 82 00 18 */	bne lbl_805D2738
/* 805D2724  7F C3 F3 78 */	mr r3, r30
/* 805D2728  7F 84 E3 78 */	mr r4, r28
/* 805D272C  7F 65 DB 78 */	mr r5, r27
/* 805D2730  7F E6 FB 78 */	mr r6, r31
/* 805D2734  4B FF F7 ED */	bl mDE_set_pal_on_cursor
lbl_805D2738:
/* 805D2738  3B 7B 00 01 */	addi r27, r27, 1
/* 805D273C  2C 1B 00 20 */	cmpwi r27, 0x20
/* 805D2740  41 80 FF C8 */	blt lbl_805D2708
/* 805D2744  3B 9C 00 01 */	addi r28, r28, 1
/* 805D2748  2C 1C 00 20 */	cmpwi r28, 0x20
/* 805D274C  41 80 FF B8 */	blt lbl_805D2704
/* 805D2750  48 00 01 4C */	b lbl_805D289C
lbl_805D2754:
/* 805D2754  3B 80 00 00 */	li r28, 0
lbl_805D2758:
/* 805D2758  7F 80 16 70 */	srawi r0, r28, 2
/* 805D275C  3B 60 00 00 */	li r27, 0
/* 805D2760  7C 00 01 94 */	addze r0, r0
/* 805D2764  54 03 0F FE */	srwi r3, r0, 0x1f
/* 805D2768  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805D276C  7C 00 1A 78 */	xor r0, r0, r3
/* 805D2770  7F A3 00 50 */	subf r29, r3, r0
lbl_805D2774:
/* 805D2774  2C 1D 00 00 */	cmpwi r29, 0
/* 805D2778  41 82 00 20 */	beq lbl_805D2798
/* 805D277C  7F 60 16 70 */	srawi r0, r27, 2
/* 805D2780  7C 00 01 94 */	addze r0, r0
/* 805D2784  54 03 0F FE */	srwi r3, r0, 0x1f
/* 805D2788  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 805D278C  7C 00 1A 78 */	xor r0, r0, r3
/* 805D2790  7C 03 00 51 */	subf. r0, r3, r0
/* 805D2794  40 82 00 18 */	bne lbl_805D27AC
lbl_805D2798:
/* 805D2798  7F C3 F3 78 */	mr r3, r30
/* 805D279C  7F 84 E3 78 */	mr r4, r28
/* 805D27A0  7F 65 DB 78 */	mr r5, r27
/* 805D27A4  7F E6 FB 78 */	mr r6, r31
/* 805D27A8  4B FF F7 79 */	bl mDE_set_pal_on_cursor
lbl_805D27AC:
/* 805D27AC  3B 7B 00 01 */	addi r27, r27, 1
/* 805D27B0  2C 1B 00 20 */	cmpwi r27, 0x20
/* 805D27B4  41 80 FF C0 */	blt lbl_805D2774
/* 805D27B8  3B 9C 00 01 */	addi r28, r28, 1
/* 805D27BC  2C 1C 00 20 */	cmpwi r28, 0x20
/* 805D27C0  41 80 FF 98 */	blt lbl_805D2758
/* 805D27C4  48 00 00 D8 */	b lbl_805D289C
lbl_805D27C8:
/* 805D27C8  3C 80 80 6D */	lis r4, mDE_paint_mizutama@ha /* 0x806CC1B0@ha */
/* 805D27CC  38 A0 00 00 */	li r5, 0
/* 805D27D0  38 84 C1 B0 */	addi r4, r4, mDE_paint_mizutama@l /* 0x806CC1B0@l */
/* 805D27D4  38 C0 00 00 */	li r6, 0
/* 805D27D8  38 E0 00 10 */	li r7, 0x10
/* 805D27DC  39 00 00 10 */	li r8, 0x10
/* 805D27E0  39 20 00 00 */	li r9, 0
/* 805D27E4  39 40 00 00 */	li r10, 0
/* 805D27E8  4B FF FD 41 */	bl mDE_set_texture_template
/* 805D27EC  3C 80 80 6D */	lis r4, mDE_paint_mizutama@ha /* 0x806CC1B0@ha */
/* 805D27F0  7F C3 F3 78 */	mr r3, r30
/* 805D27F4  38 84 C1 B0 */	addi r4, r4, mDE_paint_mizutama@l /* 0x806CC1B0@l */
/* 805D27F8  38 A0 00 10 */	li r5, 0x10
/* 805D27FC  38 C0 00 00 */	li r6, 0
/* 805D2800  38 E0 00 10 */	li r7, 0x10
/* 805D2804  39 00 00 10 */	li r8, 0x10
/* 805D2808  39 20 00 00 */	li r9, 0
/* 805D280C  39 40 00 00 */	li r10, 0
/* 805D2810  4B FF FD 19 */	bl mDE_set_texture_template
/* 805D2814  3C 80 80 6D */	lis r4, mDE_paint_mizutama@ha /* 0x806CC1B0@ha */
/* 805D2818  7F C3 F3 78 */	mr r3, r30
/* 805D281C  38 84 C1 B0 */	addi r4, r4, mDE_paint_mizutama@l /* 0x806CC1B0@l */
/* 805D2820  38 A0 00 10 */	li r5, 0x10
/* 805D2824  38 C0 00 10 */	li r6, 0x10
/* 805D2828  38 E0 00 10 */	li r7, 0x10
/* 805D282C  39 00 00 10 */	li r8, 0x10
/* 805D2830  39 20 00 00 */	li r9, 0
/* 805D2834  39 40 00 00 */	li r10, 0
/* 805D2838  4B FF FC F1 */	bl mDE_set_texture_template
/* 805D283C  3C 80 80 6D */	lis r4, mDE_paint_mizutama@ha /* 0x806CC1B0@ha */
/* 805D2840  7F C3 F3 78 */	mr r3, r30
/* 805D2844  38 84 C1 B0 */	addi r4, r4, mDE_paint_mizutama@l /* 0x806CC1B0@l */
/* 805D2848  38 A0 00 00 */	li r5, 0
/* 805D284C  38 C0 00 10 */	li r6, 0x10
/* 805D2850  38 E0 00 10 */	li r7, 0x10
/* 805D2854  39 00 00 10 */	li r8, 0x10
/* 805D2858  39 20 00 00 */	li r9, 0
/* 805D285C  39 40 00 00 */	li r10, 0
/* 805D2860  4B FF FC C9 */	bl mDE_set_texture_template
/* 805D2864  48 00 00 38 */	b lbl_805D289C
lbl_805D2868:
/* 805D2868  3B A0 00 00 */	li r29, 0
lbl_805D286C:
/* 805D286C  3B 80 00 00 */	li r28, 0
lbl_805D2870:
/* 805D2870  7F C3 F3 78 */	mr r3, r30
/* 805D2874  7F A4 EB 78 */	mr r4, r29
/* 805D2878  7F 85 E3 78 */	mr r5, r28
/* 805D287C  7F E6 FB 78 */	mr r6, r31
/* 805D2880  4B FF F6 A1 */	bl mDE_set_pal_on_cursor
/* 805D2884  3B 9C 00 01 */	addi r28, r28, 1
/* 805D2888  2C 1C 00 20 */	cmpwi r28, 0x20
/* 805D288C  41 80 FF E4 */	blt lbl_805D2870
/* 805D2890  3B BD 00 01 */	addi r29, r29, 1
/* 805D2894  2C 1D 00 20 */	cmpwi r29, 0x20
/* 805D2898  41 80 FF D4 */	blt lbl_805D286C
lbl_805D289C:
/* 805D289C  39 61 00 20 */	addi r11, r1, 0x20
/* 805D28A0  4B AC 86 79 */	bl func_8009AF18
/* 805D28A4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805D28A8  7C 08 03 A6 */	mtlr r0
/* 805D28AC  38 21 00 20 */	addi r1, r1, 0x20
/* 805D28B0  4E 80 00 20 */	blr 
