lbl_803B24FC:
/* 803B24FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B2500  7C 08 02 A6 */	mflr r0
/* 803B2504  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B2508  39 61 00 20 */	addi r11, r1, 0x20
/* 803B250C  4B CE 89 C9 */	bl func_8009AED4
/* 803B2510  2C 05 00 00 */	cmpwi r5, 0
/* 803B2514  7C 7E 1B 78 */	mr r30, r3
/* 803B2518  7C 9F 23 78 */	mr r31, r4
/* 803B251C  41 80 00 E8 */	blt lbl_803B2604
/* 803B2520  2C 05 03 D6 */	cmpwi r5, 0x3d6
/* 803B2524  40 80 00 E0 */	bge lbl_803B2604
/* 803B2528  7C A3 2B 78 */	mr r3, r5
/* 803B252C  38 81 00 0C */	addi r4, r1, 0xc
/* 803B2530  38 A1 00 08 */	addi r5, r1, 8
/* 803B2534  4B FF FD 85 */	bl mHandbill_Get_PsStringDataAddressAndSize
/* 803B2538  80 A1 00 08 */	lwz r5, 8(r1)
/* 803B253C  28 05 00 00 */	cmplwi r5, 0
/* 803B2540  40 82 00 18 */	bne lbl_803B2558
/* 803B2544  7F C3 F3 78 */	mr r3, r30
/* 803B2548  7F E4 FB 78 */	mr r4, r31
/* 803B254C  38 A0 00 20 */	li r5, 0x20
/* 803B2550  48 00 84 F9 */	bl mem_clear
/* 803B2554  48 00 00 B0 */	b lbl_803B2604
lbl_803B2558:
/* 803B2558  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B255C  28 00 00 00 */	cmplwi r0, 0
/* 803B2560  41 82 00 A4 */	beq lbl_803B2604
/* 803B2564  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 803B2568  3C 80 81 16 */	lis r4, buff_676@ha /* 0x81167FD8@ha */
/* 803B256C  7F A3 00 50 */	subf r29, r3, r0
/* 803B2570  38 05 00 1F */	addi r0, r5, 0x1f
/* 803B2574  7C 1D 02 14 */	add r0, r29, r0
/* 803B2578  38 84 7F D8 */	addi r4, r4, buff_676@l /* 0x81167FD8@l */
/* 803B257C  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 803B2580  4B C5 46 F5 */	bl _JW_GetResourceAram
/* 803B2584  80 01 00 08 */	lwz r0, 8(r1)
/* 803B2588  7F E4 FB 78 */	mr r4, r31
/* 803B258C  7C 00 F8 00 */	cmpw r0, r31
/* 803B2590  40 80 00 08 */	bge lbl_803B2598
/* 803B2594  7C 04 03 78 */	mr r4, r0
lbl_803B2598:
/* 803B2598  3C 60 81 16 */	lis r3, buff_676@ha /* 0x81167FD8@ha */
/* 803B259C  7F C6 F3 78 */	mr r6, r30
/* 803B25A0  38 03 7F D8 */	addi r0, r3, buff_676@l /* 0x81167FD8@l */
/* 803B25A4  38 A0 00 00 */	li r5, 0
/* 803B25A8  7C 60 EA 14 */	add r3, r0, r29
/* 803B25AC  7C 89 03 A6 */	mtctr r4
/* 803B25B0  2C 04 00 00 */	cmpwi r4, 0
/* 803B25B4  40 81 00 1C */	ble lbl_803B25D0
lbl_803B25B8:
/* 803B25B8  88 03 00 00 */	lbz r0, 0(r3)
/* 803B25BC  38 A5 00 01 */	addi r5, r5, 1
/* 803B25C0  38 63 00 01 */	addi r3, r3, 1
/* 803B25C4  98 06 00 00 */	stb r0, 0(r6)
/* 803B25C8  38 C6 00 01 */	addi r6, r6, 1
/* 803B25CC  42 00 FF EC */	bdnz lbl_803B25B8
lbl_803B25D0:
/* 803B25D0  7C 05 F8 50 */	subf r0, r5, r31
/* 803B25D4  38 60 00 20 */	li r3, 0x20
/* 803B25D8  7C 09 03 A6 */	mtctr r0
/* 803B25DC  7C 05 F8 00 */	cmpw r5, r31
/* 803B25E0  40 80 00 10 */	bge lbl_803B25F0
lbl_803B25E4:
/* 803B25E4  98 66 00 00 */	stb r3, 0(r6)
/* 803B25E8  38 C6 00 01 */	addi r6, r6, 1
/* 803B25EC  42 00 FF F8 */	bdnz lbl_803B25E4
lbl_803B25F0:
/* 803B25F0  80 A1 00 08 */	lwz r5, 8(r1)
/* 803B25F4  7F C3 F3 78 */	mr r3, r30
/* 803B25F8  7F E4 FB 78 */	mr r4, r31
/* 803B25FC  38 C0 00 02 */	li r6, 2
/* 803B2600  4B FF FB 41 */	bl mHandbill_Change_ControlCode
lbl_803B2604:
/* 803B2604  39 61 00 20 */	addi r11, r1, 0x20
/* 803B2608  4B CE 89 19 */	bl func_8009AF20
/* 803B260C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B2610  7C 08 03 A6 */	mtlr r0
/* 803B2614  38 21 00 20 */	addi r1, r1, 0x20
/* 803B2618  4E 80 00 20 */	blr 
