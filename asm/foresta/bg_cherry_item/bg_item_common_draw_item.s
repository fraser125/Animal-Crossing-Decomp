lbl_804B697C:
/* 804B697C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804B6980  7C 08 02 A6 */	mflr r0
/* 804B6984  90 01 00 44 */	stw r0, 0x44(r1)
/* 804B6988  39 61 00 38 */	addi r11, r1, 0x38
/* 804B698C  DB E1 00 38 */	stfd f31, 0x38(r1)
/* 804B6990  4B BE 45 31 */	bl func_8009AEC0
/* 804B6994  83 E3 00 00 */	lwz r31, 0(r3)
/* 804B6998  7C 9D 23 78 */	mr r29, r4
/* 804B699C  7C D8 33 78 */	mr r24, r6
/* 804B69A0  83 44 48 48 */	lwz r26, 0x4848(r4)
/* 804B69A4  80 1F 02 D0 */	lwz r0, 0x2d0(r31)
/* 804B69A8  FF E0 08 90 */	fmr f31, f1
/* 804B69AC  7C BE 2B 78 */	mr r30, r5
/* 804B69B0  7F 1C C3 78 */	mr r28, r24
/* 804B69B4  90 01 00 08 */	stw r0, 8(r1)
/* 804B69B8  3B 60 00 00 */	li r27, 0
/* 804B69BC  48 00 00 34 */	b lbl_804B69F0
lbl_804B69C0:
/* 804B69C0  A0 1A 00 00 */	lhz r0, 0(r26)
/* 804B69C4  28 00 00 00 */	cmplwi r0, 0
/* 804B69C8  41 82 00 1C */	beq lbl_804B69E4
/* 804B69CC  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804B69D0  80 BC 00 00 */	lwz r5, 0(r28)
/* 804B69D4  7F E3 FB 78 */	mr r3, r31
/* 804B69D8  38 81 00 08 */	addi r4, r1, 8
/* 804B69DC  7C DD 02 14 */	add r6, r29, r0
/* 804B69E0  4B FF FE 05 */	bl bg_item_common_draw_item_body
lbl_804B69E4:
/* 804B69E4  3B 7B 00 01 */	addi r27, r27, 1
/* 804B69E8  3B 5A 00 02 */	addi r26, r26, 2
/* 804B69EC  3B 9C 00 08 */	addi r28, r28, 8
lbl_804B69F0:
/* 804B69F0  A0 1D 48 4C */	lhz r0, 0x484c(r29)
/* 804B69F4  7C 1B 00 00 */	cmpw r27, r0
/* 804B69F8  41 80 FF C8 */	blt lbl_804B69C0
/* 804B69FC  80 01 00 08 */	lwz r0, 8(r1)
/* 804B6A00  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 804B6A04  83 3F 02 D0 */	lwz r25, 0x2d0(r31)
/* 804B6A08  7F 23 CB 78 */	mr r3, r25
/* 804B6A0C  4B F4 E9 BD */	bl func_804053C8
/* 804B6A10  90 61 00 08 */	stw r3, 8(r1)
/* 804B6A14  3C 00 DE 00 */	lis r0, 0xde00
/* 804B6A18  7F 1C C3 78 */	mr r28, r24
/* 804B6A1C  3B 40 00 00 */	li r26, 0
/* 804B6A20  80 9F 03 00 */	lwz r4, 0x300(r31)
/* 804B6A24  38 64 00 08 */	addi r3, r4, 8
/* 804B6A28  90 7F 03 00 */	stw r3, 0x300(r31)
/* 804B6A2C  90 04 00 00 */	stw r0, 0(r4)
/* 804B6A30  80 01 00 08 */	lwz r0, 8(r1)
/* 804B6A34  90 04 00 04 */	stw r0, 4(r4)
/* 804B6A38  83 7D 48 48 */	lwz r27, 0x4848(r29)
/* 804B6A3C  48 00 00 3C */	b lbl_804B6A78
lbl_804B6A40:
/* 804B6A40  A0 1B 00 00 */	lhz r0, 0(r27)
/* 804B6A44  28 00 00 00 */	cmplwi r0, 0
/* 804B6A48  41 82 00 24 */	beq lbl_804B6A6C
/* 804B6A4C  1C 00 00 48 */	mulli r0, r0, 0x48
/* 804B6A50  FC 20 F8 90 */	fmr f1, f31
/* 804B6A54  80 BC 00 00 */	lwz r5, 0(r28)
/* 804B6A58  7F E3 FB 78 */	mr r3, r31
/* 804B6A5C  7F C7 F3 78 */	mr r7, r30
/* 804B6A60  38 81 00 08 */	addi r4, r1, 8
/* 804B6A64  7C DD 02 14 */	add r6, r29, r0
/* 804B6A68  4B FF FD F9 */	bl bg_item_common_draw_item_shadow
lbl_804B6A6C:
/* 804B6A6C  3B 5A 00 01 */	addi r26, r26, 1
/* 804B6A70  3B 7B 00 02 */	addi r27, r27, 2
/* 804B6A74  3B 9C 00 08 */	addi r28, r28, 8
lbl_804B6A78:
/* 804B6A78  A0 1D 48 4C */	lhz r0, 0x484c(r29)
/* 804B6A7C  7C 1A 00 00 */	cmpw r26, r0
/* 804B6A80  41 80 FF C0 */	blt lbl_804B6A40
/* 804B6A84  80 C1 00 08 */	lwz r6, 8(r1)
/* 804B6A88  3C 80 DF 00 */	lis r4, 0xdf00
/* 804B6A8C  38 00 00 00 */	li r0, 0
/* 804B6A90  7F 23 CB 78 */	mr r3, r25
/* 804B6A94  38 A6 00 08 */	addi r5, r6, 8
/* 804B6A98  90 A1 00 08 */	stw r5, 8(r1)
/* 804B6A9C  90 86 00 00 */	stw r4, 0(r6)
/* 804B6AA0  90 06 00 04 */	stw r0, 4(r6)
/* 804B6AA4  80 81 00 08 */	lwz r4, 8(r1)
/* 804B6AA8  4B F4 E9 29 */	bl gfxclose
/* 804B6AAC  80 01 00 08 */	lwz r0, 8(r1)
/* 804B6AB0  39 61 00 38 */	addi r11, r1, 0x38
/* 804B6AB4  90 1F 02 D0 */	stw r0, 0x2d0(r31)
/* 804B6AB8  CB E1 00 38 */	lfd f31, 0x38(r1)
/* 804B6ABC  4B BE 44 51 */	bl func_8009AF0C
/* 804B6AC0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804B6AC4  7C 08 03 A6 */	mtlr r0
/* 804B6AC8  38 21 00 40 */	addi r1, r1, 0x40
/* 804B6ACC  4E 80 00 20 */	blr 
