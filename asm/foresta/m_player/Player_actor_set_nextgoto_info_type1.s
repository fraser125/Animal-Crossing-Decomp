lbl_804E00F8:
/* 804E00F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E00FC  7C 08 02 A6 */	mflr r0
/* 804E0100  3C 80 81 1C */	lis r4, data_811C52F0@ha /* 0x811C52F0@ha */
/* 804E0104  38 A0 00 01 */	li r5, 1
/* 804E0108  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E010C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E0110  93 C1 00 08 */	stw r30, 8(r1)
/* 804E0114  7C 7E 1B 78 */	mr r30, r3
/* 804E0118  A0 63 13 94 */	lhz r3, 0x1394(r3)
/* 804E011C  83 E4 52 F0 */	lwz r31, data_811C52F0@l(r4)  /* 0x811C52F0@l */
/* 804E0120  38 83 C0 00 */	addi r4, r3, -16384
/* 804E0124  7F E3 FB 78 */	mr r3, r31
/* 804E0128  4B F1 11 91 */	bl goto_next_scene
/* 804E012C  2C 03 00 01 */	cmpwi r3, 1
/* 804E0130  41 82 00 10 */	beq lbl_804E0140
/* 804E0134  7F C3 F3 78 */	mr r3, r30
/* 804E0138  4B EB A1 69 */	bl mDemo_End
/* 804E013C  48 00 00 4C */	b lbl_804E0188
lbl_804E0140:
/* 804E0140  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804E0144  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804E0148  3C 63 00 03 */	addis r3, r3, 3
/* 804E014C  80 63 85 30 */	lwz r3, -0x7ad0(r3)
/* 804E0150  38 63 FF FF */	addi r3, r3, -1
/* 804E0154  2C 03 00 1D */	cmpwi r3, 0x1d
/* 804E0158  41 82 00 18 */	beq lbl_804E0170
/* 804E015C  38 03 FF DD */	addi r0, r3, -35
/* 804E0160  28 00 00 03 */	cmplwi r0, 3
/* 804E0164  40 81 00 0C */	ble lbl_804E0170
/* 804E0168  2C 03 00 27 */	cmpwi r3, 0x27
/* 804E016C  40 82 00 14 */	bne lbl_804E0180
lbl_804E0170:
/* 804E0170  38 00 00 0C */	li r0, 0xc
/* 804E0174  98 1F 20 D0 */	stb r0, 0x20d0(r31)
/* 804E0178  4B E9 CA 09 */	bl mBGMForce_room_nonstop_start
/* 804E017C  48 00 00 0C */	b lbl_804E0188
lbl_804E0180:
/* 804E0180  38 60 02 49 */	li r3, 0x249
/* 804E0184  4B E9 B9 89 */	bl mBGMPsComp_make_ps_wipe
lbl_804E0188:
/* 804E0188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E018C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E0190  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E0194  7C 08 03 A6 */	mtlr r0
/* 804E0198  38 21 00 10 */	addi r1, r1, 0x10
/* 804E019C  4E 80 00 20 */	blr 
