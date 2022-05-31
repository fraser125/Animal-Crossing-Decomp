lbl_803D2508:
/* 803D2508  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803D250C  7C 08 02 A6 */	mflr r0
/* 803D2510  90 01 00 54 */	stw r0, 0x54(r1)
/* 803D2514  39 61 00 50 */	addi r11, r1, 0x50
/* 803D2518  4B CC 89 9D */	bl func_8009AEB4
/* 803D251C  7C 75 1B 78 */	mr r21, r3
/* 803D2520  3C 80 80 66 */	lis r4, npc_looks_table@ha /* 0x8065A388@ha */
/* 803D2524  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 803D2528  3C 60 80 97 */	lis r3, data_80977350@ha /* 0x80977350@ha */
/* 803D252C  28 00 00 06 */	cmplwi r0, 6
/* 803D2530  38 84 A3 88 */	addi r4, r4, npc_looks_table@l /* 0x8065A388@l */
/* 803D2534  38 03 73 50 */	addi r0, r3, data_80977350@l /* 0x80977350@l */
/* 803D2538  3B 40 00 00 */	li r26, 0
/* 803D253C  7C 9C 23 78 */	mr r28, r4
/* 803D2540  3B 20 00 00 */	li r25, 0
/* 803D2544  7C 1B 03 78 */	mr r27, r0
/* 803D2548  3B 00 FF FF */	li r24, -1
/* 803D254C  40 80 00 E0 */	bge lbl_803D262C
/* 803D2550  3C 60 81 17 */	lis r3, candidate_table@ha /* 0x8116C534@ha */
/* 803D2554  38 80 00 1E */	li r4, 0x1e
/* 803D2558  38 63 C5 34 */	addi r3, r3, candidate_table@l /* 0x8116C534@l */
/* 803D255C  4B C8 AB 0D */	bl bzero
/* 803D2560  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 803D2564  3C 60 81 17 */	lis r3, candidate_table@ha /* 0x8116C534@ha */
/* 803D2568  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 803D256C  56 BF 06 3E */	clrlwi r31, r21, 0x18
/* 803D2570  3F A4 00 01 */	addis r29, r4, 1
/* 803D2574  3B C3 C5 34 */	addi r30, r3, candidate_table@l /* 0x8116C534@l */
/* 803D2578  3A E0 00 00 */	li r23, 0
/* 803D257C  3B BD 74 38 */	addi r29, r29, 0x7438
lbl_803D2580:
/* 803D2580  3A C0 00 00 */	li r22, 0
lbl_803D2584:
/* 803D2584  88 1C 00 00 */	lbz r0, 0(r28)
/* 803D2588  7C 1F 00 40 */	cmplw r31, r0
/* 803D258C  40 82 00 6C */	bne lbl_803D25F8
/* 803D2590  7F 43 D3 78 */	mr r3, r26
/* 803D2594  7F 64 DB 78 */	mr r4, r27
/* 803D2598  38 A0 00 EC */	li r5, 0xec
/* 803D259C  4B FF CA C1 */	bl mNpc_GetDefGrowPermission
/* 803D25A0  63 40 E0 00 */	ori r0, r26, 0xe000
/* 803D25A4  7C 75 1B 78 */	mr r21, r3
/* 803D25A8  7F A3 EB 78 */	mr r3, r29
/* 803D25AC  38 A0 00 0F */	li r5, 0xf
/* 803D25B0  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803D25B4  4B FF A1 29 */	bl mNpc_SearchAnimalinfo
/* 803D25B8  2C 03 FF FF */	cmpwi r3, -1
/* 803D25BC  40 82 00 3C */	bne lbl_803D25F8
/* 803D25C0  7F 43 D3 78 */	mr r3, r26
/* 803D25C4  4B FF CA 5D */	bl mNpc_GetHaveAppeared_idx
/* 803D25C8  2C 03 00 00 */	cmpwi r3, 0
/* 803D25CC  40 82 00 2C */	bne lbl_803D25F8
/* 803D25D0  2C 15 00 00 */	cmpwi r21, 0
/* 803D25D4  41 82 00 0C */	beq lbl_803D25E0
/* 803D25D8  2C 15 00 01 */	cmpwi r21, 1
/* 803D25DC  40 82 00 1C */	bne lbl_803D25F8
lbl_803D25E0:
/* 803D25E0  38 00 00 01 */	li r0, 1
/* 803D25E4  88 7E 00 00 */	lbz r3, 0(r30)
/* 803D25E8  7C 00 B0 30 */	slw r0, r0, r22
/* 803D25EC  3B 39 00 01 */	addi r25, r25, 1
/* 803D25F0  7C 60 03 78 */	or r0, r3, r0
/* 803D25F4  98 1E 00 00 */	stb r0, 0(r30)
lbl_803D25F8:
/* 803D25F8  3B 5A 00 01 */	addi r26, r26, 1
/* 803D25FC  3B 9C 00 01 */	addi r28, r28, 1
/* 803D2600  2C 1A 00 EC */	cmpwi r26, 0xec
/* 803D2604  40 80 00 10 */	bge lbl_803D2614
/* 803D2608  3A D6 00 01 */	addi r22, r22, 1
/* 803D260C  2C 16 00 08 */	cmpwi r22, 8
/* 803D2610  41 80 FF 74 */	blt lbl_803D2584
lbl_803D2614:
/* 803D2614  2C 1A 00 EC */	cmpwi r26, 0xec
/* 803D2618  40 80 00 14 */	bge lbl_803D262C
/* 803D261C  3A F7 00 01 */	addi r23, r23, 1
/* 803D2620  3B DE 00 01 */	addi r30, r30, 1
/* 803D2624  2C 17 00 1E */	cmpwi r23, 0x1e
/* 803D2628  41 80 FF 58 */	blt lbl_803D2580
lbl_803D262C:
/* 803D262C  2C 19 00 00 */	cmpwi r25, 0
/* 803D2630  40 81 00 B4 */	ble lbl_803D26E4
/* 803D2634  4B C8 A6 C1 */	bl fqrand
/* 803D2638  6F 23 80 00 */	xoris r3, r25, 0x8000
/* 803D263C  3C 00 43 30 */	lis r0, 0x4330
/* 803D2640  90 61 00 0C */	stw r3, 0xc(r1)
/* 803D2644  3C 80 80 64 */	lis r4, data_806428CC@ha /* 0x806428CC@ha */
/* 803D2648  C8 44 28 CC */	lfd f2, data_806428CC@l(r4)  /* 0x806428CC@l */
/* 803D264C  38 80 00 00 */	li r4, 0
/* 803D2650  90 01 00 08 */	stw r0, 8(r1)
/* 803D2654  3C 60 81 17 */	lis r3, candidate_table@ha /* 0x8116C534@ha */
/* 803D2658  38 03 C5 34 */	addi r0, r3, candidate_table@l /* 0x8116C534@l */
/* 803D265C  7C 85 23 78 */	mr r5, r4
/* 803D2660  C8 01 00 08 */	lfd f0, 8(r1)
/* 803D2664  7C 03 03 78 */	mr r3, r0
/* 803D2668  EC 00 10 28 */	fsubs f0, f0, f2
/* 803D266C  EC 00 00 72 */	fmuls f0, f0, f1
/* 803D2670  FC 00 00 1E */	fctiwz f0, f0
/* 803D2674  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 803D2678  80 E1 00 14 */	lwz r7, 0x14(r1)
lbl_803D267C:
/* 803D267C  2C 04 00 EC */	cmpwi r4, 0xec
/* 803D2680  40 80 00 64 */	bge lbl_803D26E4
/* 803D2684  38 00 00 08 */	li r0, 8
/* 803D2688  38 C0 00 00 */	li r6, 0
/* 803D268C  7C 09 03 A6 */	mtctr r0
lbl_803D2690:
/* 803D2690  2C 04 00 EC */	cmpwi r4, 0xec
/* 803D2694  40 80 00 38 */	bge lbl_803D26CC
/* 803D2698  88 03 00 00 */	lbz r0, 0(r3)
/* 803D269C  7C 00 36 30 */	sraw r0, r0, r6
/* 803D26A0  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 803D26A4  2C 00 00 01 */	cmpwi r0, 1
/* 803D26A8  40 82 00 18 */	bne lbl_803D26C0
/* 803D26AC  2C 07 00 00 */	cmpwi r7, 0
/* 803D26B0  41 81 00 0C */	bgt lbl_803D26BC
/* 803D26B4  7C 98 23 78 */	mr r24, r4
/* 803D26B8  48 00 00 14 */	b lbl_803D26CC
lbl_803D26BC:
/* 803D26BC  38 E7 FF FF */	addi r7, r7, -1
lbl_803D26C0:
/* 803D26C0  38 84 00 01 */	addi r4, r4, 1
/* 803D26C4  38 C6 00 01 */	addi r6, r6, 1
/* 803D26C8  42 00 FF C8 */	bdnz lbl_803D2690
lbl_803D26CC:
/* 803D26CC  2C 18 FF FF */	cmpwi r24, -1
/* 803D26D0  40 82 00 14 */	bne lbl_803D26E4
/* 803D26D4  38 A5 00 01 */	addi r5, r5, 1
/* 803D26D8  38 63 00 01 */	addi r3, r3, 1
/* 803D26DC  2C 05 00 1E */	cmpwi r5, 0x1e
/* 803D26E0  41 80 FF 9C */	blt lbl_803D267C
lbl_803D26E4:
/* 803D26E4  7F 03 C3 78 */	mr r3, r24
/* 803D26E8  39 61 00 50 */	addi r11, r1, 0x50
/* 803D26EC  4B CC 88 15 */	bl func_8009AF00
/* 803D26F0  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803D26F4  7C 08 03 A6 */	mtlr r0
/* 803D26F8  38 21 00 50 */	addi r1, r1, 0x50
/* 803D26FC  4E 80 00 20 */	blr 
