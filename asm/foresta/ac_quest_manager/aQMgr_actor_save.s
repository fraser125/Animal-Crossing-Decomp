lbl_80487188:
/* 80487188  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8048718C  7C 08 02 A6 */	mflr r0
/* 80487190  90 01 00 24 */	stw r0, 0x24(r1)
/* 80487194  39 61 00 20 */	addi r11, r1, 0x20
/* 80487198  4B C1 3D 3D */	bl func_8009AED4
/* 8048719C  3B C3 02 14 */	addi r30, r3, 0x214
/* 804871A0  4B FF ED C1 */	bl aQMgr_actor_init_quest
/* 804871A4  3C 60 80 69 */	lis r3, save_proc_1237@ha /* 0x8068ACC4@ha */
/* 804871A8  3B A0 00 00 */	li r29, 0
/* 804871AC  3B E3 AC C4 */	addi r31, r3, save_proc_1237@l /* 0x8068ACC4@l */
lbl_804871B0:
/* 804871B0  80 7E 00 08 */	lwz r3, 8(r30)
/* 804871B4  28 03 00 00 */	cmplwi r3, 0
/* 804871B8  41 82 00 2C */	beq lbl_804871E4
/* 804871BC  88 03 00 00 */	lbz r0, 0(r3)
/* 804871C0  54 00 D7 BF */	rlwinm. r0, r0, 0x1a, 0x1e, 0x1f
/* 804871C4  41 80 00 20 */	blt lbl_804871E4
/* 804871C8  2C 00 00 03 */	cmpwi r0, 3
/* 804871CC  40 80 00 18 */	bge lbl_804871E4
/* 804871D0  54 00 10 3A */	slwi r0, r0, 2
/* 804871D4  7F C3 F3 78 */	mr r3, r30
/* 804871D8  7D 9F 00 2E */	lwzx r12, r31, r0
/* 804871DC  7D 89 03 A6 */	mtctr r12
/* 804871E0  4E 80 04 21 */	bctrl 
lbl_804871E4:
/* 804871E4  3B BD 00 01 */	addi r29, r29, 1
/* 804871E8  3B DE 00 34 */	addi r30, r30, 0x34
/* 804871EC  2C 1D 00 23 */	cmpwi r29, 0x23
/* 804871F0  41 80 FF C0 */	blt lbl_804871B0
/* 804871F4  39 61 00 20 */	addi r11, r1, 0x20
/* 804871F8  4B C1 3D 29 */	bl func_8009AF20
/* 804871FC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80487200  7C 08 03 A6 */	mtlr r0
/* 80487204  38 21 00 20 */	addi r1, r1, 0x20
/* 80487208  4E 80 00 20 */	blr 
