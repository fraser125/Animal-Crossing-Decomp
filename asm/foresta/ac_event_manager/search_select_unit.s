lbl_8041AE6C:
/* 8041AE6C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8041AE70  7C 08 02 A6 */	mflr r0
/* 8041AE74  90 01 00 54 */	stw r0, 0x54(r1)
/* 8041AE78  39 61 00 50 */	addi r11, r1, 0x50
/* 8041AE7C  4B C8 00 41 */	bl func_8009AEBC
/* 8041AE80  7C 77 1B 78 */	mr r23, r3
/* 8041AE84  83 C5 00 04 */	lwz r30, 4(r5)
/* 8041AE88  81 03 01 EC */	lwz r8, 0x1ec(r3)
/* 8041AE8C  7C 98 23 78 */	mr r24, r4
/* 8041AE90  80 63 01 E8 */	lwz r3, 0x1e8(r3)
/* 8041AE94  7C D9 33 78 */	mr r25, r6
/* 8041AE98  38 88 FF FE */	addi r4, r8, -2
/* 8041AE9C  83 E5 00 00 */	lwz r31, 0(r5)
/* 8041AEA0  38 03 FF FD */	addi r0, r3, -3
/* 8041AEA4  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 8041AEA8  7F A4 01 D6 */	mullw r29, r4, r0
/* 8041AEAC  7C FA 3B 78 */	mr r26, r7
/* 8041AEB0  93 E1 00 18 */	stw r31, 0x18(r1)
/* 8041AEB4  3B 60 00 03 */	li r27, 3
/* 8041AEB8  48 00 00 60 */	b lbl_8041AF18
lbl_8041AEBC:
/* 8041AEBC  7F BC EB 78 */	mr r28, r29
/* 8041AEC0  48 00 00 4C */	b lbl_8041AF0C
lbl_8041AEC4:
/* 8041AEC4  93 E1 00 08 */	stw r31, 8(r1)
/* 8041AEC8  7E E3 BB 78 */	mr r3, r23
/* 8041AECC  7F 04 C3 78 */	mr r4, r24
/* 8041AED0  7F 67 DB 78 */	mr r7, r27
/* 8041AED4  93 C1 00 0C */	stw r30, 0xc(r1)
/* 8041AED8  7F 48 D3 78 */	mr r8, r26
/* 8041AEDC  38 A1 00 08 */	addi r5, r1, 8
/* 8041AEE0  38 C1 00 10 */	addi r6, r1, 0x10
/* 8041AEE4  4B FF FC 29 */	bl search_select_unit_cancel_check
/* 8041AEE8  2C 03 00 00 */	cmpwi r3, 0
/* 8041AEEC  40 82 00 1C */	bne lbl_8041AF08
/* 8041AEF0  80 61 00 10 */	lwz r3, 0x10(r1)
/* 8041AEF4  3B 60 00 00 */	li r27, 0
/* 8041AEF8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041AEFC  90 79 00 00 */	stw r3, 0(r25)
/* 8041AF00  90 19 00 04 */	stw r0, 4(r25)
/* 8041AF04  48 00 00 10 */	b lbl_8041AF14
lbl_8041AF08:
/* 8041AF08  3B 9C FF FF */	addi r28, r28, -1
lbl_8041AF0C:
/* 8041AF0C  2C 1C 00 00 */	cmpwi r28, 0
/* 8041AF10  41 81 FF B4 */	bgt lbl_8041AEC4
lbl_8041AF14:
/* 8041AF14  3B 7B FF FF */	addi r27, r27, -1
lbl_8041AF18:
/* 8041AF18  2C 1B 00 00 */	cmpwi r27, 0
/* 8041AF1C  41 81 FF A0 */	bgt lbl_8041AEBC
/* 8041AF20  7F 83 E3 78 */	mr r3, r28
/* 8041AF24  39 61 00 50 */	addi r11, r1, 0x50
/* 8041AF28  4B C7 FF E1 */	bl func_8009AF08
/* 8041AF2C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8041AF30  7C 08 03 A6 */	mtlr r0
/* 8041AF34  38 21 00 50 */	addi r1, r1, 0x50
/* 8041AF38  4E 80 00 20 */	blr 
