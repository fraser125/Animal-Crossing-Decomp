lbl_803B261C:
/* 803B261C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B2620  7C 08 02 A6 */	mflr r0
/* 803B2624  2C 04 00 00 */	cmpwi r4, 0
/* 803B2628  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B262C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803B2630  7C 7F 1B 78 */	mr r31, r3
/* 803B2634  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803B2638  41 80 00 E4 */	blt lbl_803B271C
/* 803B263C  2C 04 03 D6 */	cmpwi r4, 0x3d6
/* 803B2640  40 80 00 DC */	bge lbl_803B271C
/* 803B2644  7C 83 23 78 */	mr r3, r4
/* 803B2648  38 81 00 0C */	addi r4, r1, 0xc
/* 803B264C  38 A1 00 08 */	addi r5, r1, 8
/* 803B2650  4B FF FC B1 */	bl mHandbill_Get_MailStringDataAddressAndSize
/* 803B2654  80 A1 00 08 */	lwz r5, 8(r1)
/* 803B2658  28 05 00 00 */	cmplwi r5, 0
/* 803B265C  40 82 00 18 */	bne lbl_803B2674
/* 803B2660  7F E3 FB 78 */	mr r3, r31
/* 803B2664  38 80 00 C0 */	li r4, 0xc0
/* 803B2668  38 A0 00 CD */	li r5, 0xcd
/* 803B266C  48 00 83 DD */	bl mem_clear
/* 803B2670  48 00 00 AC */	b lbl_803B271C
lbl_803B2674:
/* 803B2674  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803B2678  28 00 00 00 */	cmplwi r0, 0
/* 803B267C  41 82 00 A0 */	beq lbl_803B271C
/* 803B2680  54 03 00 34 */	rlwinm r3, r0, 0, 0, 0x1a
/* 803B2684  3C 80 81 17 */	lis r4, mHandbill_mail_buff@ha /* 0x81168058@ha */
/* 803B2688  7F C3 00 50 */	subf r30, r3, r0
/* 803B268C  38 05 00 1F */	addi r0, r5, 0x1f
/* 803B2690  7C 1E 02 14 */	add r0, r30, r0
/* 803B2694  38 84 80 58 */	addi r4, r4, mHandbill_mail_buff@l /* 0x81168058@l */
/* 803B2698  54 05 00 34 */	rlwinm r5, r0, 0, 0, 0x1a
/* 803B269C  4B C5 45 D9 */	bl _JW_GetResourceAram
/* 803B26A0  80 81 00 08 */	lwz r4, 8(r1)
/* 803B26A4  3C 60 81 17 */	lis r3, mHandbill_mail_buff@ha /* 0x81168058@ha */
/* 803B26A8  38 03 80 58 */	addi r0, r3, mHandbill_mail_buff@l /* 0x81168058@l */
/* 803B26AC  7F E6 FB 78 */	mr r6, r31
/* 803B26B0  28 04 00 C0 */	cmplwi r4, 0xc0
/* 803B26B4  38 A0 00 C0 */	li r5, 0xc0
/* 803B26B8  7C 60 F2 14 */	add r3, r0, r30
/* 803B26BC  40 80 00 08 */	bge lbl_803B26C4
/* 803B26C0  7C 85 23 78 */	mr r5, r4
lbl_803B26C4:
/* 803B26C4  38 80 00 00 */	li r4, 0
/* 803B26C8  7C A9 03 A6 */	mtctr r5
/* 803B26CC  2C 05 00 00 */	cmpwi r5, 0
/* 803B26D0  40 81 00 1C */	ble lbl_803B26EC
lbl_803B26D4:
/* 803B26D4  88 03 00 00 */	lbz r0, 0(r3)
/* 803B26D8  38 84 00 01 */	addi r4, r4, 1
/* 803B26DC  38 63 00 01 */	addi r3, r3, 1
/* 803B26E0  98 06 00 00 */	stb r0, 0(r6)
/* 803B26E4  38 C6 00 01 */	addi r6, r6, 1
/* 803B26E8  42 00 FF EC */	bdnz lbl_803B26D4
lbl_803B26EC:
/* 803B26EC  20 04 00 C0 */	subfic r0, r4, 0xc0
/* 803B26F0  38 60 00 CD */	li r3, 0xcd
/* 803B26F4  7C 09 03 A6 */	mtctr r0
/* 803B26F8  2C 04 00 C0 */	cmpwi r4, 0xc0
/* 803B26FC  40 80 00 10 */	bge lbl_803B270C
lbl_803B2700:
/* 803B2700  98 66 00 00 */	stb r3, 0(r6)
/* 803B2704  38 C6 00 01 */	addi r6, r6, 1
/* 803B2708  42 00 FF F8 */	bdnz lbl_803B2700
lbl_803B270C:
/* 803B270C  7F E3 FB 78 */	mr r3, r31
/* 803B2710  38 80 00 C0 */	li r4, 0xc0
/* 803B2714  38 C0 00 01 */	li r6, 1
/* 803B2718  4B FF FA 29 */	bl mHandbill_Change_ControlCode
lbl_803B271C:
/* 803B271C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B2720  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803B2724  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803B2728  7C 08 03 A6 */	mtlr r0
/* 803B272C  38 21 00 20 */	addi r1, r1, 0x20
/* 803B2730  4E 80 00 20 */	blr 
