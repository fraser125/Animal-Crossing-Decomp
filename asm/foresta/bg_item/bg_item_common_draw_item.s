lbl_804BDD00:
/* 804BDD00  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804BDD04  7C 08 02 A6 */	mflr r0
/* 804BDD08  90 01 00 44 */	stw r0, 0x44(r1)
/* 804BDD0C  39 61 00 38 */	addi r11, r1, 0x38
/* 804BDD10  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 804BDD14  4B BD D1 AD */	bl func_8009AEC0
/* 804BDD18  83 E3 00 00 */	lwz r31, 0(r3)
/* 804BDD1C  7C 9D 23 78 */	mr r29, r4
/* 804BDD20  7C D8 33 78 */	mr r24, r6
/* 804BDD24  83 44 48 48 */	lwz r26, 0x4848(r4)
/* 804BDD28  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 804BDD2C  FF E0 08 90 */	fmr f31, f1
/* 804BDD30  7C BE 2B 78 */	mr r30, r5
/* 804BDD34  7F 1C C3 78 */	mr r28, r24
/* 804BDD38  90 01 00 08 */	stw r0, 8(r1)
/* 804BDD3C  3B 60 00 00 */	li r27, 0
/* 804BDD40  48 00 00 34 */	b lbl_804BDD74
lbl_804BDD44:
/* 804BDD44  A0 1A 00 00 */	lhz r0, 0(r26)
/* 804BDD48  28 00 00 00 */	cmplwi r0, 0
/* 804BDD4C  41 82 00 1C */	beq lbl_804BDD68
/* 804BDD50  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804BDD54  80 BC 00 00 */	lwz r5, 0(r28)
/* 804BDD58  7F E3 FB 78 */	mr r3, r31
/* 804BDD5C  38 81 00 08 */	addi r4, r1, 8
/* 804BDD60  7C DD 02 14 */	add r6, r29, r0
/* 804BDD64  4B FF FE 05 */	bl bg_item_common_draw_item_body
lbl_804BDD68:
/* 804BDD68  3B 7B 00 01 */	addi r27, r27, 1
/* 804BDD6C  3B 5A 00 02 */	addi r26, r26, 2
/* 804BDD70  3B 9C 00 08 */	addi r28, r28, 8
lbl_804BDD74:
/* 804BDD74  A0 1D 48 4C */	lhz r0, 0x484c(r29)
/* 804BDD78  7C 1B 00 00 */	cmpw r27, r0
/* 804BDD7C  41 80 FF C8 */	blt lbl_804BDD44
/* 804BDD80  80 01 00 08 */	lwz r0, 8(r1)
/* 804BDD84  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 804BDD88  83 3F 02 D0 */	lwz r25, 0x2d0(r31)
/* 804BDD8C  7F 23 CB 78 */	mr r3, r25
/* 804BDD90  4B F4 76 39 */	bl func_804053C8
/* 804BDD94  90 61 00 08 */	stw r3, 8(r1)
/* 804BDD98  3C 00 DE 00 */	lis r0, 0xde00
/* 804BDD9C  7F 1C C3 78 */	mr r28, r24
/* 804BDDA0  3B 40 00 00 */	li r26, 0
/* 804BDDA4  80 9F 03 00 */	lwz r4, 0x300(r31)
/* 804BDDA8  38 64 00 08 */	addi r3, r4, 8
/* 804BDDAC  90 7F 03 00 */	stw r3, 0x300(r31)
/* 804BDDB0  90 04 00 00 */	stw r0, 0(r4)
/* 804BDDB4  80 01 00 08 */	lwz r0, 8(r1)
/* 804BDDB8  90 04 00 04 */	stw r0, 4(r4)
/* 804BDDBC  83 7D 48 48 */	lwz r27, 0x4848(r29)
/* 804BDDC0  48 00 00 3C */	b lbl_804BDDFC
lbl_804BDDC4:
/* 804BDDC4  A0 1B 00 00 */	lhz r0, 0(r27)
/* 804BDDC8  28 00 00 00 */	cmplwi r0, 0
/* 804BDDCC  41 82 00 24 */	beq lbl_804BDDF0
/* 804BDDD0  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804BDDD4  FC 20 F8 90 */	fmr f1, f31
/* 804BDDD8  80 BC 00 00 */	lwz r5, 0(r28)
/* 804BDDDC  7F E3 FB 78 */	mr r3, r31
/* 804BDDE0  7F C7 F3 78 */	mr r7, r30
/* 804BDDE4  38 81 00 08 */	addi r4, r1, 8
/* 804BDDE8  7C DD 02 14 */	add r6, r29, r0
/* 804BDDEC  4B FF FD F9 */	bl bg_item_common_draw_item_shadow
lbl_804BDDF0:
/* 804BDDF0  3B 5A 00 01 */	addi r26, r26, 1
/* 804BDDF4  3B 7B 00 02 */	addi r27, r27, 2
/* 804BDDF8  3B 9C 00 08 */	addi r28, r28, 8
lbl_804BDDFC:
/* 804BDDFC  A0 1D 48 4C */	lhz r0, 0x484c(r29)
/* 804BDE00  7C 1A 00 00 */	cmpw r26, r0
/* 804BDE04  41 80 FF C0 */	blt lbl_804BDDC4
/* 804BDE08  80 C1 00 08 */	lwz r6, 8(r1)
/* 804BDE0C  3C 80 DF 00 */	lis r4, 0xdf00
/* 804BDE10  38 00 00 00 */	li r0, 0
/* 804BDE14  7F 23 CB 78 */	mr r3, r25
/* 804BDE18  38 A6 00 08 */	addi r5, r6, 8
/* 804BDE1C  90 A1 00 08 */	stw r5, 8(r1)
/* 804BDE20  90 86 00 00 */	stw r4, 0(r6)
/* 804BDE24  90 06 00 04 */	stw r0, 4(r6)
/* 804BDE28  80 81 00 08 */	lwz r4, 8(r1)
/* 804BDE2C  4B F4 75 A5 */	bl gfxclose
/* 804BDE30  80 01 00 08 */	lwz r0, 8(r1)
/* 804BDE34  39 61 00 38 */	addi r11, r1, 0x38
/* 804BDE38  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 804BDE3C  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 804BDE40  4B BD D0 CD */	bl func_8009AF0C
/* 804BDE44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804BDE48  7C 08 03 A6 */	mtlr r0
/* 804BDE4C  38 21 00 40 */	addi r1, r1, 0x40
/* 804BDE50  4E 80 00 20 */	blr 
