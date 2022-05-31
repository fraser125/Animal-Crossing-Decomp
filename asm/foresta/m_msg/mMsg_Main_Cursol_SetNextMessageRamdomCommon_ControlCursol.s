lbl_803C350C:
/* 803C350C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803C3510  7C 08 02 A6 */	mflr r0
/* 803C3514  90 01 00 24 */	stw r0, 0x24(r1)
/* 803C3518  39 61 00 20 */	addi r11, r1, 0x20
/* 803C351C  4B CD 79 B5 */	bl func_8009AED0
/* 803C3520  7C 7C 1B 78 */	mr r28, r3
/* 803C3524  7C BD 2B 78 */	mr r29, r5
/* 803C3528  80 A3 00 0C */	lwz r5, 0xc(r3)
/* 803C352C  7C 9F 23 78 */	mr r31, r4
/* 803C3530  7F A4 07 34 */	extsh r4, r29
/* 803C3534  38 60 00 00 */	li r3, 0
/* 803C3538  3B C5 00 20 */	addi r30, r5, 0x20
/* 803C353C  4B FF 79 0D */	bl get_random_timer
/* 803C3540  7C 67 07 34 */	extsh r7, r3
/* 803C3544  38 C1 00 08 */	addi r6, r1, 8
/* 803C3548  38 60 00 00 */	li r3, 0
/* 803C354C  7F A9 03 A6 */	mtctr r29
/* 803C3550  2C 1D 00 00 */	cmpwi r29, 0
/* 803C3554  40 81 00 34 */	ble lbl_803C3588
lbl_803C3558:
/* 803C3558  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C355C  7C A0 1A 14 */	add r5, r0, r3
/* 803C3560  7C BE 2A 14 */	add r5, r30, r5
/* 803C3564  88 85 00 02 */	lbz r4, 2(r5)
/* 803C3568  88 05 00 03 */	lbz r0, 3(r5)
/* 803C356C  54 84 44 2E */	rlwinm r4, r4, 8, 0x10, 0x17
/* 803C3570  7C 86 1B 2E */	sthx r4, r6, r3
/* 803C3574  7C 86 1A 2E */	lhzx r4, r6, r3
/* 803C3578  7C 80 03 78 */	or r0, r4, r0
/* 803C357C  7C 06 1B 2E */	sthx r0, r6, r3
/* 803C3580  38 63 00 02 */	addi r3, r3, 2
/* 803C3584  42 00 FF D4 */	bdnz lbl_803C3558
lbl_803C3588:
/* 803C3588  2C 07 00 00 */	cmpwi r7, 0
/* 803C358C  41 80 00 0C */	blt lbl_803C3598
/* 803C3590  7C 07 E8 00 */	cmpw r7, r29
/* 803C3594  41 80 00 08 */	blt lbl_803C359C
lbl_803C3598:
/* 803C3598  38 E0 00 00 */	li r7, 0
lbl_803C359C:
/* 803C359C  54 E0 08 3C */	slwi r0, r7, 1
/* 803C35A0  38 61 00 08 */	addi r3, r1, 8
/* 803C35A4  7C 83 02 2E */	lhzx r4, r3, r0
/* 803C35A8  7F 83 E3 78 */	mr r3, r28
/* 803C35AC  4B FF CA 19 */	bl mMsg_Set_continue_msg_num
/* 803C35B0  80 9F 00 00 */	lwz r4, 0(r31)
/* 803C35B4  7F 83 E3 78 */	mr r3, r28
/* 803C35B8  4B FF CA 91 */	bl func_803C0048
/* 803C35BC  80 1F 00 00 */	lwz r0, 0(r31)
/* 803C35C0  7C 00 1A 14 */	add r0, r0, r3
/* 803C35C4  38 60 00 00 */	li r3, 0
/* 803C35C8  90 1F 00 00 */	stw r0, 0(r31)
/* 803C35CC  39 61 00 20 */	addi r11, r1, 0x20
/* 803C35D0  4B CD 79 4D */	bl func_8009AF1C
/* 803C35D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803C35D8  7C 08 03 A6 */	mtlr r0
/* 803C35DC  38 21 00 20 */	addi r1, r1, 0x20
/* 803C35E0  4E 80 00 20 */	blr 
