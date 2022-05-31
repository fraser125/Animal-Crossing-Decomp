lbl_804FBEC8:
/* 804FBEC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FBECC  7C 08 02 A6 */	mflr r0
/* 804FBED0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FBED4  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBED8  4B B9 EF F5 */	bl func_8009AECC
/* 804FBEDC  2C 05 00 00 */	cmpwi r5, 0
/* 804FBEE0  7C 7B 1B 78 */	mr r27, r3
/* 804FBEE4  7C 9C 23 78 */	mr r28, r4
/* 804FBEE8  41 82 00 34 */	beq lbl_804FBF1C
/* 804FBEEC  83 FB 0D 18 */	lwz r31, 0xd18(r27)
/* 804FBEF0  83 DB 0D 1C */	lwz r30, 0xd1c(r27)
/* 804FBEF4  83 BB 0D 20 */	lwz r29, 0xd20(r27)
/* 804FBEF8  4B FD 94 75 */	bl Player_actor_SettleRequestMainIndexPriority
/* 804FBEFC  A0 FB 0D 24 */	lhz r7, 0xd24(r27)
/* 804FBF00  7F 83 E3 78 */	mr r3, r28
/* 804FBF04  81 1B 0D 28 */	lwz r8, 0xd28(r27)
/* 804FBF08  7F E4 FB 78 */	mr r4, r31
/* 804FBF0C  7F C5 F3 78 */	mr r5, r30
/* 804FBF10  7F A6 EB 78 */	mr r6, r29
/* 804FBF14  39 20 00 13 */	li r9, 0x13
/* 804FBF18  48 00 00 B9 */	bl func_804FBFD0
lbl_804FBF1C:
/* 804FBF1C  39 61 00 20 */	addi r11, r1, 0x20
/* 804FBF20  4B B9 EF F9 */	bl func_8009AF18
/* 804FBF24  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FBF28  7C 08 03 A6 */	mtlr r0
/* 804FBF2C  38 21 00 20 */	addi r1, r1, 0x20
/* 804FBF30  4E 80 00 20 */	blr 
