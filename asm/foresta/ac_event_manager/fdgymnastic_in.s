lbl_8041FD04:
/* 8041FD04  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8041FD08  7C 08 02 A6 */	mflr r0
/* 8041FD0C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8041FD10  39 61 00 20 */	addi r11, r1, 0x20
/* 8041FD14  4B C7 B1 C1 */	bl func_8009AED4
/* 8041FD18  7C 7D 1B 78 */	mr r29, r3
/* 8041FD1C  7C 9E 23 78 */	mr r30, r4
/* 8041FD20  38 A0 00 04 */	li r5, 4
/* 8041FD24  4B FF CE 8D */	bl show_actor_at_wade_checkless
/* 8041FD28  7C 7F 1B 78 */	mr r31, r3
/* 8041FD2C  7F A3 EB 78 */	mr r3, r29
/* 8041FD30  7F C4 F3 78 */	mr r4, r30
/* 8041FD34  38 A0 00 06 */	li r5, 6
/* 8041FD38  4B FF CE 79 */	bl show_actor_at_wade_checkless
/* 8041FD3C  3C 1F 00 01 */	addis r0, r31, 1
/* 8041FD40  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041FD44  41 82 00 10 */	beq lbl_8041FD54
/* 8041FD48  3C 03 00 01 */	addis r0, r3, 1
/* 8041FD4C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041FD50  40 82 00 0C */	bne lbl_8041FD5C
lbl_8041FD54:
/* 8041FD54  38 60 00 02 */	li r3, 2
/* 8041FD58  48 00 00 20 */	b lbl_8041FD78
lbl_8041FD5C:
/* 8041FD5C  28 1F 00 00 */	cmplwi r31, 0
/* 8041FD60  41 82 00 14 */	beq lbl_8041FD74
/* 8041FD64  28 03 00 00 */	cmplwi r3, 0
/* 8041FD68  41 82 00 0C */	beq lbl_8041FD74
/* 8041FD6C  38 60 00 01 */	li r3, 1
/* 8041FD70  48 00 00 08 */	b lbl_8041FD78
lbl_8041FD74:
/* 8041FD74  38 60 00 00 */	li r3, 0
lbl_8041FD78:
/* 8041FD78  39 61 00 20 */	addi r11, r1, 0x20
/* 8041FD7C  4B C7 B1 A5 */	bl func_8009AF20
/* 8041FD80  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8041FD84  7C 08 03 A6 */	mtlr r0
/* 8041FD88  38 21 00 20 */	addi r1, r1, 0x20
/* 8041FD8C  4E 80 00 20 */	blr 
