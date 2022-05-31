lbl_805A2660:
/* 805A2660  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A2664  7C 08 02 A6 */	mflr r0
/* 805A2668  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A266C  39 61 00 20 */	addi r11, r1, 0x20
/* 805A2670  4B AF 88 65 */	bl func_8009AED4
/* 805A2674  7C 9E 23 78 */	mr r30, r4
/* 805A2678  3B E3 01 74 */	addi r31, r3, 0x174
/* 805A267C  3B A0 00 00 */	li r29, 0
lbl_805A2680:
/* 805A2680  80 1F 01 D0 */	lwz r0, 0x1d0(r31)
/* 805A2684  2C 00 00 01 */	cmpwi r0, 1
/* 805A2688  40 82 00 CC */	bne lbl_805A2754
/* 805A268C  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 805A2690  54 00 02 0C */	rlwinm r0, r0, 0, 8, 6
/* 805A2694  90 1F 00 20 */	stw r0, 0x20(r31)
/* 805A2698  80 1F 00 20 */	lwz r0, 0x20(r31)
/* 805A269C  70 00 00 50 */	andi. r0, r0, 0x50
/* 805A26A0  41 82 00 88 */	beq lbl_805A2728
/* 805A26A4  7F E3 FB 78 */	mr r3, r31
/* 805A26A8  4B FF FD 9D */	bl func_805A2444
/* 805A26AC  7F E3 FB 78 */	mr r3, r31
/* 805A26B0  4B FF FE 41 */	bl aGYO_BGcheck
/* 805A26B4  4B FF FF 65 */	bl bite_check
/* 805A26B8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 805A26BC  41 82 00 14 */	beq lbl_805A26D0
/* 805A26C0  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A26C4  60 00 00 01 */	ori r0, r0, 1
/* 805A26C8  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A26CC  48 00 00 10 */	b lbl_805A26DC
lbl_805A26D0:
/* 805A26D0  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A26D4  54 00 04 3C */	rlwinm r0, r0, 0, 0x10, 0x1e
/* 805A26D8  B0 1F 02 40 */	sth r0, 0x240(r31)
lbl_805A26DC:
/* 805A26DC  A0 7F 02 40 */	lhz r3, 0x240(r31)
/* 805A26E0  54 60 07 39 */	rlwinm. r0, r3, 0, 0x1c, 0x1c
/* 805A26E4  41 82 00 20 */	beq lbl_805A2704
/* 805A26E8  54 60 07 76 */	rlwinm r0, r3, 0, 0x1d, 0x1b
/* 805A26EC  38 7E 01 10 */	addi r3, r30, 0x110
/* 805A26F0  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A26F4  A0 1F 02 40 */	lhz r0, 0x240(r31)
/* 805A26F8  60 00 00 04 */	ori r0, r0, 4
/* 805A26FC  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A2700  4B FF F6 A5 */	bl aGYO_change_data_area
lbl_805A2704:
/* 805A2704  81 9F 01 64 */	lwz r12, 0x164(r31)
/* 805A2708  7F E3 FB 78 */	mr r3, r31
/* 805A270C  7F C4 F3 78 */	mr r4, r30
/* 805A2710  7D 89 03 A6 */	mtctr r12
/* 805A2714  4E 80 04 21 */	bctrl 
/* 805A2718  3C 80 80 65 */	lis r4, lit_509@ha /* 0x8064A354@ha */
/* 805A271C  7F E3 FB 78 */	mr r3, r31
/* 805A2720  C0 24 A3 54 */	lfs f1, lit_509@l(r4)  /* 0x8064A354@l */
/* 805A2724  4B DD 1A AD */	bl func_803741D0
lbl_805A2728:
/* 805A2728  7F E3 FB 78 */	mr r3, r31
/* 805A272C  7F C4 F3 78 */	mr r4, r30
/* 805A2730  4B FF FE 11 */	bl aGYO_cull_check
/* 805A2734  A0 7F 02 40 */	lhz r3, 0x240(r31)
/* 805A2738  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 805A273C  41 82 00 18 */	beq lbl_805A2754
/* 805A2740  54 60 06 F2 */	rlwinm r0, r3, 0, 0x1b, 0x19
/* 805A2744  7F E3 FB 78 */	mr r3, r31
/* 805A2748  B0 1F 02 40 */	sth r0, 0x240(r31)
/* 805A274C  7F C4 F3 78 */	mr r4, r30
/* 805A2750  4B FF F6 91 */	bl aGYO_destruct
lbl_805A2754:
/* 805A2754  3B BD 00 01 */	addi r29, r29, 1
/* 805A2758  3B FF 02 50 */	addi r31, r31, 0x250
/* 805A275C  2C 1D 00 02 */	cmpwi r29, 2
/* 805A2760  41 80 FF 20 */	blt lbl_805A2680
/* 805A2764  39 61 00 20 */	addi r11, r1, 0x20
/* 805A2768  4B AF 87 B9 */	bl func_8009AF20
/* 805A276C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A2770  7C 08 03 A6 */	mtlr r0
/* 805A2774  38 21 00 20 */	addi r1, r1, 0x20
/* 805A2778  4E 80 00 20 */	blr 
