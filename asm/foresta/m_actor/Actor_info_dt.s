lbl_80374F1C:
/* 80374F1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80374F20  7C 08 02 A6 */	mflr r0
/* 80374F24  90 01 00 24 */	stw r0, 0x24(r1)
/* 80374F28  39 61 00 20 */	addi r11, r1, 0x20
/* 80374F2C  4B D2 5F A1 */	bl func_8009AECC
/* 80374F30  7C 7B 1B 78 */	mr r27, r3
/* 80374F34  7C 9C 23 78 */	mr r28, r4
/* 80374F38  3B A0 00 00 */	li r29, 0
/* 80374F3C  3B E0 00 00 */	li r31, 0
lbl_80374F40:
/* 80374F40  3B DF 00 08 */	addi r30, r31, 8
/* 80374F44  48 00 00 10 */	b lbl_80374F54
lbl_80374F48:
/* 80374F48  7F 63 DB 78 */	mr r3, r27
/* 80374F4C  7F 85 E3 78 */	mr r5, r28
/* 80374F50  48 00 0C 5D */	bl Actor_info_delete
lbl_80374F54:
/* 80374F54  7C 9B F0 2E */	lwzx r4, r27, r30
/* 80374F58  28 04 00 00 */	cmplwi r4, 0
/* 80374F5C  40 82 FF EC */	bne lbl_80374F48
/* 80374F60  3B BD 00 01 */	addi r29, r29, 1
/* 80374F64  3B FF 00 08 */	addi r31, r31, 8
/* 80374F68  2C 1D 00 08 */	cmpwi r29, 8
/* 80374F6C  41 80 FF D4 */	blt lbl_80374F40
/* 80374F70  48 00 11 55 */	bl actor_dlftbls_cleanup
/* 80374F74  39 61 00 20 */	addi r11, r1, 0x20
/* 80374F78  4B D2 5F A1 */	bl func_8009AF18
/* 80374F7C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80374F80  7C 08 03 A6 */	mtlr r0
/* 80374F84  38 21 00 20 */	addi r1, r1, 0x20
/* 80374F88  4E 80 00 20 */	blr 
