lbl_804BE4C8:
/* 804BE4C8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804BE4CC  7C 08 02 A6 */	mflr r0
/* 804BE4D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804BE4D4  39 61 00 20 */	addi r11, r1, 0x20
/* 804BE4D8  4B BD C9 FD */	bl func_8009AED4
/* 804BE4DC  38 00 00 04 */	li r0, 4
/* 804BE4E0  7C 7D 1B 78 */	mr r29, r3
/* 804BE4E4  38 60 00 00 */	li r3, 0
/* 804BE4E8  7C 09 03 A6 */	mtctr r0
lbl_804BE4EC:
/* 804BE4EC  90 7D 01 74 */	stw r3, 0x174(r29)
/* 804BE4F0  42 00 FF FC */	bdnz lbl_804BE4EC
/* 804BE4F4  83 DD 46 24 */	lwz r30, 0x4624(r29)
/* 804BE4F8  3B E0 00 00 */	li r31, 0
/* 804BE4FC  48 00 00 20 */	b lbl_804BE51C
lbl_804BE500:
/* 804BE500  38 BF 46 28 */	addi r5, r31, 0x4628
/* 804BE504  7F A3 EB 78 */	mr r3, r29
/* 804BE508  38 9D 01 74 */	addi r4, r29, 0x174
/* 804BE50C  7C BD 2A 14 */	add r5, r29, r5
/* 804BE510  4B FF FF 0D */	bl bPI_set_draw_tbl
/* 804BE514  3B FF 00 10 */	addi r31, r31, 0x10
/* 804BE518  3B DE FF FF */	addi r30, r30, -1
lbl_804BE51C:
/* 804BE51C  2C 1E 00 00 */	cmpwi r30, 0
/* 804BE520  40 82 FF E0 */	bne lbl_804BE500
/* 804BE524  39 61 00 20 */	addi r11, r1, 0x20
/* 804BE528  4B BD C9 F9 */	bl func_8009AF20
/* 804BE52C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BE530  7C 08 03 A6 */	mtlr r0
/* 804BE534  38 21 00 20 */	addi r1, r1, 0x20
/* 804BE538  4E 80 00 20 */	blr 
