lbl_804B24E4:
/* 804B24E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B24E8  7C 08 02 A6 */	mflr r0
/* 804B24EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B24F0  39 61 00 40 */	addi r11, r1, 0x40
/* 804B24F4  4B BE 89 D9 */	bl func_8009AECC
/* 804B24F8  7C 7B 1B 78 */	mr r27, r3
/* 804B24FC  7C 9E 23 78 */	mr r30, r4
/* 804B2500  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 804B2504  7C BF 2B 78 */	mr r31, r5
/* 804B2508  28 00 08 04 */	cmplwi r0, 0x804
/* 804B250C  7C DC 33 78 */	mr r28, r6
/* 804B2510  41 82 00 14 */	beq lbl_804B2524
/* 804B2514  28 00 08 61 */	cmplwi r0, 0x861
/* 804B2518  41 82 00 0C */	beq lbl_804B2524
/* 804B251C  28 00 08 68 */	cmplwi r0, 0x868
/* 804B2520  40 82 00 40 */	bne lbl_804B2560
lbl_804B2524:
/* 804B2524  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804B2528  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804B252C  3C 63 00 02 */	addis r3, r3, 2
/* 804B2530  80 63 60 88 */	lwz r3, 0x6088(r3)
/* 804B2534  28 03 00 00 */	cmplwi r3, 0
/* 804B2538  41 82 01 10 */	beq lbl_804B2648
/* 804B253C  81 83 00 14 */	lwz r12, 0x14(r3)
/* 804B2540  28 0C 00 00 */	cmplwi r12, 0
/* 804B2544  41 82 01 04 */	beq lbl_804B2648
/* 804B2548  7F C4 F3 78 */	mr r4, r30
/* 804B254C  7F E5 FB 78 */	mr r5, r31
/* 804B2550  38 60 00 04 */	li r3, 4
/* 804B2554  7D 89 03 A6 */	mtctr r12
/* 804B2558  4E 80 04 21 */	bctrl 
/* 804B255C  48 00 00 EC */	b lbl_804B2648
lbl_804B2560:
/* 804B2560  28 00 00 5E */	cmplwi r0, 0x5e
/* 804B2564  41 82 00 14 */	beq lbl_804B2578
/* 804B2568  28 00 00 7A */	cmplwi r0, 0x7a
/* 804B256C  41 82 00 0C */	beq lbl_804B2578
/* 804B2570  28 00 00 81 */	cmplwi r0, 0x81
/* 804B2574  40 82 00 CC */	bne lbl_804B2640
lbl_804B2578:
/* 804B2578  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804B257C  3C 60 80 69 */	lis r3, wait_pos@ha /* 0x80692944@ha */
/* 804B2580  38 84 52 F0 */	addi r4, r4, data_811C52F0@l /* 0x811C52F0@l */
/* 804B2584  39 40 FF FF */	li r10, -1
/* 804B2588  80 84 00 00 */	lwz r4, 0(r4)
/* 804B258C  39 23 29 44 */	addi r9, r3, wait_pos@l /* 0x80692944@l */
/* 804B2590  38 00 00 00 */	li r0, 0
/* 804B2594  38 A0 00 A4 */	li r5, 0xa4
/* 804B2598  91 41 00 08 */	stw r10, 8(r1)
/* 804B259C  38 64 1D A8 */	addi r3, r4, 0x1da8
/* 804B25A0  38 C0 00 00 */	li r6, 0
/* 804B25A4  38 E0 00 00 */	li r7, 0
/* 804B25A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B25AC  39 00 00 00 */	li r8, 0
/* 804B25B0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B25B4  91 41 00 14 */	stw r10, 0x14(r1)
/* 804B25B8  91 41 00 18 */	stw r10, 0x18(r1)
/* 804B25BC  C0 29 00 00 */	lfs f1, 0(r9)
/* 804B25C0  C0 49 00 04 */	lfs f2, 4(r9)
/* 804B25C4  C0 69 00 08 */	lfs f3, 8(r9)
/* 804B25C8  89 24 00 E4 */	lbz r9, 0xe4(r4)
/* 804B25CC  89 44 00 E5 */	lbz r10, 0xe5(r4)
/* 804B25D0  4B EC 31 79 */	bl Actor_info_make_actor
/* 804B25D4  7C 7D 1B 79 */	or. r29, r3, r3
/* 804B25D8  41 82 00 54 */	beq lbl_804B262C
/* 804B25DC  7F 63 DB 78 */	mr r3, r27
/* 804B25E0  7F C4 F3 78 */	mr r4, r30
/* 804B25E4  7F E5 FB 78 */	mr r5, r31
/* 804B25E8  7F 86 E3 78 */	mr r6, r28
/* 804B25EC  7F A7 EB 78 */	mr r7, r29
/* 804B25F0  4B FF FC 35 */	bl drop_fruit
/* 804B25F4  3C 60 80 64 */	lis r3, lit_664@ha /* 0x80645FF4@ha */
/* 804B25F8  C0 1C 00 00 */	lfs f0, 0(r28)
/* 804B25FC  C0 23 5F F4 */	lfs f1, lit_664@l(r3)  /* 0x80645FF4@l */
/* 804B2600  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804B2604  40 82 00 44 */	bne lbl_804B2648
/* 804B2608  C0 1C 00 04 */	lfs f0, 4(r28)
/* 804B260C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804B2610  40 82 00 38 */	bne lbl_804B2648
/* 804B2614  C0 1C 00 08 */	lfs f0, 8(r28)
/* 804B2618  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 804B261C  40 82 00 2C */	bne lbl_804B2648
/* 804B2620  7F A3 EB 78 */	mr r3, r29
/* 804B2624  4B EC 1E 1D */	bl Actor_delete
/* 804B2628  48 00 00 20 */	b lbl_804B2648
lbl_804B262C:
/* 804B262C  3C 80 80 69 */	lis r4, wait_pos@ha /* 0x80692944@ha */
/* 804B2630  7F 83 E3 78 */	mr r3, r28
/* 804B2634  38 84 29 44 */	addi r4, r4, wait_pos@l /* 0x80692944@l */
/* 804B2638  4B F0 88 85 */	bl xyz_t_move
/* 804B263C  48 00 00 0C */	b lbl_804B2648
lbl_804B2640:
/* 804B2640  38 E0 00 00 */	li r7, 0
/* 804B2644  4B FF FB E1 */	bl drop_fruit
lbl_804B2648:
/* 804B2648  39 61 00 40 */	addi r11, r1, 0x40
/* 804B264C  4B BE 88 CD */	bl func_8009AF18
/* 804B2650  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B2654  7C 08 03 A6 */	mtlr r0
/* 804B2658  38 21 00 40 */	addi r1, r1, 0x40
/* 804B265C  4E 80 00 20 */	blr 
