lbl_804CCC10:
/* 804CCC10  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804CCC14  7C 08 02 A6 */	mflr r0
/* 804CCC18  90 01 00 44 */	stw r0, 0x44(r1)
/* 804CCC1C  39 61 00 38 */	addi r11, r1, 0x38
/* 804CCC20  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 804CCC24  4B BC E2 9D */	bl func_8009AEC0
/* 804CCC28  83 E3 00 00 */	lwz r31, 0(r3)
/* 804CCC2C  7C 9D 23 78 */	mr r29, r4
/* 804CCC30  7C D8 33 78 */	mr r24, r6
/* 804CCC34  83 44 48 48 */	lwz r26, 0x4848(r4)
/* 804CCC38  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 804CCC3C  FF E0 08 90 */	fmr f31, f1
/* 804CCC40  7C BE 2B 78 */	mr r30, r5
/* 804CCC44  7F 1C C3 78 */	mr r28, r24
/* 804CCC48  90 01 00 08 */	stw r0, 8(r1)
/* 804CCC4C  3B 60 00 00 */	li r27, 0
/* 804CCC50  48 00 00 34 */	b lbl_804CCC84
lbl_804CCC54:
/* 804CCC54  A0 1A 00 00 */	lhz r0, 0(r26)
/* 804CCC58  28 00 00 00 */	cmplwi r0, 0
/* 804CCC5C  41 82 00 1C */	beq lbl_804CCC78
/* 804CCC60  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804CCC64  80 BC 00 00 */	lwz r5, 0(r28)
/* 804CCC68  7F E3 FB 78 */	mr r3, r31
/* 804CCC6C  38 81 00 08 */	addi r4, r1, 8
/* 804CCC70  7C DD 02 14 */	add r6, r29, r0
/* 804CCC74  4B FF FE 05 */	bl bg_item_common_draw_item_body
lbl_804CCC78:
/* 804CCC78  3B 7B 00 01 */	addi r27, r27, 1
/* 804CCC7C  3B 5A 00 02 */	addi r26, r26, 2
/* 804CCC80  3B 9C 00 08 */	addi r28, r28, 8
lbl_804CCC84:
/* 804CCC84  A0 1D 48 4C */	lhz r0, 0x484c(r29)
/* 804CCC88  7C 1B 00 00 */	cmpw r27, r0
/* 804CCC8C  41 80 FF C8 */	blt lbl_804CCC54
/* 804CCC90  80 01 00 08 */	lwz r0, 8(r1)
/* 804CCC94  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 804CCC98  83 3F 02 D0 */	lwz r25, 0x2d0(r31)
/* 804CCC9C  7F 23 CB 78 */	mr r3, r25
/* 804CCCA0  4B F3 87 29 */	bl func_804053C8
/* 804CCCA4  90 61 00 08 */	stw r3, 8(r1)
/* 804CCCA8  3C 00 DE 00 */	lis r0, 0xde00
/* 804CCCAC  7F 1C C3 78 */	mr r28, r24
/* 804CCCB0  3B 40 00 00 */	li r26, 0
/* 804CCCB4  80 9F 03 00 */	lwz r4, 0x300(r31)
/* 804CCCB8  38 64 00 08 */	addi r3, r4, 8
/* 804CCCBC  90 7F 03 00 */	stw r3, 0x300(r31)
/* 804CCCC0  90 04 00 00 */	stw r0, 0(r4)
/* 804CCCC4  80 01 00 08 */	lwz r0, 8(r1)
/* 804CCCC8  90 04 00 04 */	stw r0, 4(r4)
/* 804CCCCC  83 7D 48 48 */	lwz r27, 0x4848(r29)
/* 804CCCD0  48 00 00 3C */	b lbl_804CCD0C
lbl_804CCCD4:
/* 804CCCD4  A0 1B 00 00 */	lhz r0, 0(r27)
/* 804CCCD8  28 00 00 00 */	cmplwi r0, 0
/* 804CCCDC  41 82 00 24 */	beq lbl_804CCD00
/* 804CCCE0  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804CCCE4  FC 20 F8 90 */	fmr f1, f31
/* 804CCCE8  80 BC 00 00 */	lwz r5, 0(r28)
/* 804CCCEC  7F E3 FB 78 */	mr r3, r31
/* 804CCCF0  7F C7 F3 78 */	mr r7, r30
/* 804CCCF4  38 81 00 08 */	addi r4, r1, 8
/* 804CCCF8  7C DD 02 14 */	add r6, r29, r0
/* 804CCCFC  4B FF FD F9 */	bl bg_item_common_draw_item_shadow
lbl_804CCD00:
/* 804CCD00  3B 5A 00 01 */	addi r26, r26, 1
/* 804CCD04  3B 7B 00 02 */	addi r27, r27, 2
/* 804CCD08  3B 9C 00 08 */	addi r28, r28, 8
lbl_804CCD0C:
/* 804CCD0C  A0 1D 48 4C */	lhz r0, 0x484c(r29)
/* 804CCD10  7C 1A 00 00 */	cmpw r26, r0
/* 804CCD14  41 80 FF C0 */	blt lbl_804CCCD4
/* 804CCD18  80 C1 00 08 */	lwz r6, 8(r1)
/* 804CCD1C  3C 80 DF 00 */	lis r4, 0xdf00
/* 804CCD20  38 00 00 00 */	li r0, 0
/* 804CCD24  7F 23 CB 78 */	mr r3, r25
/* 804CCD28  38 A6 00 08 */	addi r5, r6, 8
/* 804CCD2C  90 A1 00 08 */	stw r5, 8(r1)
/* 804CCD30  90 86 00 00 */	stw r4, 0(r6)
/* 804CCD34  90 06 00 04 */	stw r0, 4(r6)
/* 804CCD38  80 81 00 08 */	lwz r4, 8(r1)
/* 804CCD3C  4B F3 86 95 */	bl gfxclose
/* 804CCD40  80 01 00 08 */	lwz r0, 8(r1)
/* 804CCD44  39 61 00 38 */	addi r11, r1, 0x38
/* 804CCD48  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 804CCD4C  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 804CCD50  4B BC E1 BD */	bl func_8009AF0C
/* 804CCD54  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804CCD58  7C 08 03 A6 */	mtlr r0
/* 804CCD5C  38 21 00 40 */	addi r1, r1, 0x40
/* 804CCD60  4E 80 00 20 */	blr 
