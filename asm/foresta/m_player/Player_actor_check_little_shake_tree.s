lbl_804DC12C:
/* 804DC12C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804DC130  7C 08 02 A6 */	mflr r0
/* 804DC134  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DC138  39 61 00 30 */	addi r11, r1, 0x30
/* 804DC13C  4B BB ED 99 */	bl func_8009AED4
/* 804DC140  7C 7D 1B 78 */	mr r29, r3
/* 804DC144  38 00 FF FF */	li r0, -1
/* 804DC148  80 A3 0C F8 */	lwz r5, 0xcf8(r3)
/* 804DC14C  7C 9E 23 78 */	mr r30, r4
/* 804DC150  2C 05 00 59 */	cmpwi r5, 0x59
/* 804DC154  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DC158  90 01 00 08 */	stw r0, 8(r1)
/* 804DC15C  41 82 02 C4 */	beq lbl_804DC420
/* 804DC160  38 81 00 0C */	addi r4, r1, 0xc
/* 804DC164  38 A1 00 08 */	addi r5, r1, 8
/* 804DC168  38 C1 00 10 */	addi r6, r1, 0x10
/* 804DC16C  4B FF FD 15 */	bl Player_actor_check_fg_little_shake_tree
/* 804DC170  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 804DC174  7C 7F 1B 78 */	mr r31, r3
/* 804DC178  41 82 02 B8 */	beq lbl_804DC430
/* 804DC17C  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804DC180  7F A3 EB 78 */	mr r3, r29
/* 804DC184  80 E1 00 08 */	lwz r7, 8(r1)
/* 804DC188  7F C4 F3 78 */	mr r4, r30
/* 804DC18C  7F E5 FB 78 */	mr r5, r31
/* 804DC190  39 00 00 01 */	li r8, 1
/* 804DC194  4B FF FE 01 */	bl Player_actor_Set_shake_tree_table
/* 804DC198  2C 03 00 00 */	cmpwi r3, 0
/* 804DC19C  41 82 02 94 */	beq lbl_804DC430
/* 804DC1A0  57 E0 04 3E */	clrlwi r0, r31, 0x10
/* 804DC1A4  38 60 00 00 */	li r3, 0
/* 804DC1A8  28 00 08 02 */	cmplwi r0, 0x802
/* 804DC1AC  41 82 02 5C */	beq lbl_804DC408
/* 804DC1B0  28 00 08 07 */	cmplwi r0, 0x807
/* 804DC1B4  41 82 02 54 */	beq lbl_804DC408
/* 804DC1B8  28 00 08 0F */	cmplwi r0, 0x80f
/* 804DC1BC  41 82 02 4C */	beq lbl_804DC408
/* 804DC1C0  28 00 08 17 */	cmplwi r0, 0x817
/* 804DC1C4  41 82 02 44 */	beq lbl_804DC408
/* 804DC1C8  28 00 08 1F */	cmplwi r0, 0x81f
/* 804DC1CC  41 82 02 3C */	beq lbl_804DC408
/* 804DC1D0  28 00 08 27 */	cmplwi r0, 0x827
/* 804DC1D4  41 82 02 34 */	beq lbl_804DC408
/* 804DC1D8  28 00 08 2F */	cmplwi r0, 0x82f
/* 804DC1DC  41 82 02 2C */	beq lbl_804DC408
/* 804DC1E0  28 00 08 34 */	cmplwi r0, 0x834
/* 804DC1E4  41 82 02 24 */	beq lbl_804DC408
/* 804DC1E8  28 00 08 39 */	cmplwi r0, 0x839
/* 804DC1EC  41 82 02 1C */	beq lbl_804DC408
/* 804DC1F0  28 00 08 2F */	cmplwi r0, 0x82f
/* 804DC1F4  41 82 02 14 */	beq lbl_804DC408
/* 804DC1F8  28 00 08 34 */	cmplwi r0, 0x834
/* 804DC1FC  41 82 02 0C */	beq lbl_804DC408
/* 804DC200  28 00 08 39 */	cmplwi r0, 0x839
/* 804DC204  41 82 02 04 */	beq lbl_804DC408
/* 804DC208  28 00 08 51 */	cmplwi r0, 0x851
/* 804DC20C  41 82 01 FC */	beq lbl_804DC408
/* 804DC210  28 00 08 56 */	cmplwi r0, 0x856
/* 804DC214  41 82 01 F4 */	beq lbl_804DC408
/* 804DC218  28 00 08 5F */	cmplwi r0, 0x85f
/* 804DC21C  41 82 01 EC */	beq lbl_804DC408
/* 804DC220  28 00 08 65 */	cmplwi r0, 0x865
/* 804DC224  41 82 01 E4 */	beq lbl_804DC408
/* 804DC228  28 00 08 03 */	cmplwi r0, 0x803
/* 804DC22C  41 82 01 DC */	beq lbl_804DC408
/* 804DC230  28 00 08 08 */	cmplwi r0, 0x808
/* 804DC234  41 82 01 D4 */	beq lbl_804DC408
/* 804DC238  28 00 08 10 */	cmplwi r0, 0x810
/* 804DC23C  41 82 01 CC */	beq lbl_804DC408
/* 804DC240  28 00 08 18 */	cmplwi r0, 0x818
/* 804DC244  41 82 01 C4 */	beq lbl_804DC408
/* 804DC248  28 00 08 20 */	cmplwi r0, 0x820
/* 804DC24C  41 82 01 BC */	beq lbl_804DC408
/* 804DC250  28 00 08 28 */	cmplwi r0, 0x828
/* 804DC254  41 82 01 B4 */	beq lbl_804DC408
/* 804DC258  28 00 08 30 */	cmplwi r0, 0x830
/* 804DC25C  41 82 01 AC */	beq lbl_804DC408
/* 804DC260  28 00 08 35 */	cmplwi r0, 0x835
/* 804DC264  41 82 01 A4 */	beq lbl_804DC408
/* 804DC268  28 00 08 3A */	cmplwi r0, 0x83a
/* 804DC26C  41 82 01 9C */	beq lbl_804DC408
/* 804DC270  28 00 08 30 */	cmplwi r0, 0x830
/* 804DC274  41 82 01 94 */	beq lbl_804DC408
/* 804DC278  28 00 08 35 */	cmplwi r0, 0x835
/* 804DC27C  41 82 01 8C */	beq lbl_804DC408
/* 804DC280  28 00 08 3A */	cmplwi r0, 0x83a
/* 804DC284  41 82 01 84 */	beq lbl_804DC408
/* 804DC288  28 00 08 52 */	cmplwi r0, 0x852
/* 804DC28C  41 82 01 7C */	beq lbl_804DC408
/* 804DC290  28 00 08 57 */	cmplwi r0, 0x857
/* 804DC294  41 82 01 74 */	beq lbl_804DC408
/* 804DC298  28 00 08 60 */	cmplwi r0, 0x860
/* 804DC29C  41 82 01 6C */	beq lbl_804DC408
/* 804DC2A0  28 00 08 66 */	cmplwi r0, 0x866
/* 804DC2A4  41 82 01 64 */	beq lbl_804DC408
/* 804DC2A8  28 00 08 04 */	cmplwi r0, 0x804
/* 804DC2AC  41 82 01 5C */	beq lbl_804DC408
/* 804DC2B0  28 00 08 0C */	cmplwi r0, 0x80c
/* 804DC2B4  41 82 01 54 */	beq lbl_804DC408
/* 804DC2B8  28 00 08 14 */	cmplwi r0, 0x814
/* 804DC2BC  41 82 01 4C */	beq lbl_804DC408
/* 804DC2C0  28 00 08 1C */	cmplwi r0, 0x81c
/* 804DC2C4  41 82 01 44 */	beq lbl_804DC408
/* 804DC2C8  28 00 08 24 */	cmplwi r0, 0x824
/* 804DC2CC  41 82 01 3C */	beq lbl_804DC408
/* 804DC2D0  28 00 08 2C */	cmplwi r0, 0x82c
/* 804DC2D4  41 82 01 34 */	beq lbl_804DC408
/* 804DC2D8  28 00 08 31 */	cmplwi r0, 0x831
/* 804DC2DC  41 82 01 2C */	beq lbl_804DC408
/* 804DC2E0  28 00 08 36 */	cmplwi r0, 0x836
/* 804DC2E4  41 82 01 24 */	beq lbl_804DC408
/* 804DC2E8  28 00 08 3B */	cmplwi r0, 0x83b
/* 804DC2EC  41 82 01 1C */	beq lbl_804DC408
/* 804DC2F0  28 00 08 53 */	cmplwi r0, 0x853
/* 804DC2F4  41 82 01 14 */	beq lbl_804DC408
/* 804DC2F8  28 00 08 5B */	cmplwi r0, 0x85b
/* 804DC2FC  41 82 01 0C */	beq lbl_804DC408
/* 804DC300  28 00 08 61 */	cmplwi r0, 0x861
/* 804DC304  41 82 01 04 */	beq lbl_804DC408
/* 804DC308  28 00 08 68 */	cmplwi r0, 0x868
/* 804DC30C  41 82 00 FC */	beq lbl_804DC408
/* 804DC310  28 00 08 67 */	cmplwi r0, 0x867
/* 804DC314  41 82 00 F4 */	beq lbl_804DC408
/* 804DC318  28 00 08 09 */	cmplwi r0, 0x809
/* 804DC31C  41 82 00 EC */	beq lbl_804DC408
/* 804DC320  28 00 08 11 */	cmplwi r0, 0x811
/* 804DC324  41 82 00 E4 */	beq lbl_804DC408
/* 804DC328  28 00 08 19 */	cmplwi r0, 0x819
/* 804DC32C  41 82 00 DC */	beq lbl_804DC408
/* 804DC330  28 00 08 21 */	cmplwi r0, 0x821
/* 804DC334  41 82 00 D4 */	beq lbl_804DC408
/* 804DC338  28 00 08 29 */	cmplwi r0, 0x829
/* 804DC33C  41 82 00 CC */	beq lbl_804DC408
/* 804DC340  28 00 08 58 */	cmplwi r0, 0x858
/* 804DC344  41 82 00 C4 */	beq lbl_804DC408
/* 804DC348  28 00 08 0A */	cmplwi r0, 0x80a
/* 804DC34C  41 82 00 BC */	beq lbl_804DC408
/* 804DC350  28 00 08 12 */	cmplwi r0, 0x812
/* 804DC354  41 82 00 B4 */	beq lbl_804DC408
/* 804DC358  28 00 08 1A */	cmplwi r0, 0x81a
/* 804DC35C  41 82 00 AC */	beq lbl_804DC408
/* 804DC360  28 00 08 22 */	cmplwi r0, 0x822
/* 804DC364  41 82 00 A4 */	beq lbl_804DC408
/* 804DC368  28 00 08 2A */	cmplwi r0, 0x82a
/* 804DC36C  41 82 00 9C */	beq lbl_804DC408
/* 804DC370  28 00 08 59 */	cmplwi r0, 0x859
/* 804DC374  41 82 00 94 */	beq lbl_804DC408
/* 804DC378  28 00 08 0B */	cmplwi r0, 0x80b
/* 804DC37C  41 82 00 8C */	beq lbl_804DC408
/* 804DC380  28 00 08 13 */	cmplwi r0, 0x813
/* 804DC384  41 82 00 84 */	beq lbl_804DC408
/* 804DC388  28 00 08 1B */	cmplwi r0, 0x81b
/* 804DC38C  41 82 00 7C */	beq lbl_804DC408
/* 804DC390  28 00 08 23 */	cmplwi r0, 0x823
/* 804DC394  41 82 00 74 */	beq lbl_804DC408
/* 804DC398  28 00 08 2B */	cmplwi r0, 0x82b
/* 804DC39C  41 82 00 6C */	beq lbl_804DC408
/* 804DC3A0  28 00 08 5A */	cmplwi r0, 0x85a
/* 804DC3A4  41 82 00 64 */	beq lbl_804DC408
/* 804DC3A8  28 00 00 5E */	cmplwi r0, 0x5e
/* 804DC3AC  41 82 00 5C */	beq lbl_804DC408
/* 804DC3B0  28 00 00 5F */	cmplwi r0, 0x5f
/* 804DC3B4  41 82 00 54 */	beq lbl_804DC408
/* 804DC3B8  28 00 00 60 */	cmplwi r0, 0x60
/* 804DC3BC  41 82 00 4C */	beq lbl_804DC408
/* 804DC3C0  28 00 00 61 */	cmplwi r0, 0x61
/* 804DC3C4  41 82 00 44 */	beq lbl_804DC408
/* 804DC3C8  28 00 00 69 */	cmplwi r0, 0x69
/* 804DC3CC  41 82 00 3C */	beq lbl_804DC408
/* 804DC3D0  28 00 00 78 */	cmplwi r0, 0x78
/* 804DC3D4  41 82 00 34 */	beq lbl_804DC408
/* 804DC3D8  28 00 00 79 */	cmplwi r0, 0x79
/* 804DC3DC  41 82 00 2C */	beq lbl_804DC408
/* 804DC3E0  28 00 00 7A */	cmplwi r0, 0x7a
/* 804DC3E4  41 82 00 24 */	beq lbl_804DC408
/* 804DC3E8  28 00 00 82 */	cmplwi r0, 0x82
/* 804DC3EC  41 82 00 1C */	beq lbl_804DC408
/* 804DC3F0  28 00 00 7F */	cmplwi r0, 0x7f
/* 804DC3F4  41 82 00 14 */	beq lbl_804DC408
/* 804DC3F8  28 00 00 80 */	cmplwi r0, 0x80
/* 804DC3FC  41 82 00 0C */	beq lbl_804DC408
/* 804DC400  28 00 00 81 */	cmplwi r0, 0x81
/* 804DC404  40 82 00 08 */	bne lbl_804DC40C
lbl_804DC408:
/* 804DC408  38 60 00 01 */	li r3, 1
lbl_804DC40C:
/* 804DC40C  2C 03 00 00 */	cmpwi r3, 0
/* 804DC410  41 82 00 20 */	beq lbl_804DC430
/* 804DC414  38 61 00 10 */	addi r3, r1, 0x10
/* 804DC418  48 00 34 19 */	bl Player_actor_sound_tree_touch
/* 804DC41C  48 00 00 14 */	b lbl_804DC430
lbl_804DC420:
/* 804DC420  80 1D 0D 28 */	lwz r0, 0xd28(r29)
/* 804DC424  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DC428  80 1D 0D 2C */	lwz r0, 0xd2c(r29)
/* 804DC42C  90 01 00 08 */	stw r0, 8(r1)
lbl_804DC430:
/* 804DC430  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804DC434  38 00 00 03 */	li r0, 3
/* 804DC438  38 9D 11 B4 */	addi r4, r29, 0x11b4
/* 804DC43C  38 BD 11 C0 */	addi r5, r29, 0x11c0
/* 804DC440  38 DD 11 CC */	addi r6, r29, 0x11cc
/* 804DC444  C0 03 65 68 */	lfs f0, lit_604@l(r3)  /* 0x80646568@l */
/* 804DC448  7C 09 03 A6 */	mtctr r0
/* 804DC44C  38 00 FF FF */	li r0, -1
lbl_804DC450:
/* 804DC450  C0 24 00 00 */	lfs f1, 0(r4)
/* 804DC454  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804DC458  4C 40 13 82 */	cror 2, 0, 2
/* 804DC45C  40 82 00 3C */	bne lbl_804DC498
/* 804DC460  80 E5 00 00 */	lwz r7, 0(r5)
/* 804DC464  81 06 00 00 */	lwz r8, 0(r6)
/* 804DC468  2C 07 00 00 */	cmpwi r7, 0
/* 804DC46C  40 80 00 0C */	bge lbl_804DC478
/* 804DC470  2C 08 00 00 */	cmpwi r8, 0
/* 804DC474  41 80 00 24 */	blt lbl_804DC498
lbl_804DC478:
/* 804DC478  80 61 00 0C */	lwz r3, 0xc(r1)
/* 804DC47C  7C 07 18 00 */	cmpw r7, r3
/* 804DC480  40 82 00 10 */	bne lbl_804DC490
/* 804DC484  80 61 00 08 */	lwz r3, 8(r1)
/* 804DC488  7C 08 18 00 */	cmpw r8, r3
/* 804DC48C  41 82 00 0C */	beq lbl_804DC498
lbl_804DC490:
/* 804DC490  90 05 00 00 */	stw r0, 0(r5)
/* 804DC494  90 06 00 00 */	stw r0, 0(r6)
lbl_804DC498:
/* 804DC498  38 84 00 04 */	addi r4, r4, 4
/* 804DC49C  38 A5 00 04 */	addi r5, r5, 4
/* 804DC4A0  38 C6 00 04 */	addi r6, r6, 4
/* 804DC4A4  42 00 FF AC */	bdnz lbl_804DC450
/* 804DC4A8  39 61 00 30 */	addi r11, r1, 0x30
/* 804DC4AC  4B BB EA 75 */	bl func_8009AF20
/* 804DC4B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804DC4B4  7C 08 03 A6 */	mtlr r0
/* 804DC4B8  38 21 00 30 */	addi r1, r1, 0x30
/* 804DC4BC  4E 80 00 20 */	blr 
