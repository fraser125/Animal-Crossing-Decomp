lbl_804AEF74:
/* 804AEF74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AEF78  7C 08 02 A6 */	mflr r0
/* 804AEF7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AEF80  80 03 02 38 */	lwz r0, 0x238(r3)
/* 804AEF84  2C 00 00 06 */	cmpwi r0, 6
/* 804AEF88  40 82 00 48 */	bne lbl_804AEFD0
/* 804AEF8C  A8 A3 02 62 */	lha r5, 0x262(r3)
/* 804AEF90  2C 05 00 00 */	cmpwi r5, 0
/* 804AEF94  40 82 00 0C */	bne lbl_804AEFA0
/* 804AEF98  38 00 00 00 */	li r0, 0
/* 804AEF9C  48 00 00 10 */	b lbl_804AEFAC
lbl_804AEFA0:
/* 804AEFA0  38 05 FF FF */	addi r0, r5, -1
/* 804AEFA4  B0 03 02 62 */	sth r0, 0x262(r3)
/* 804AEFA8  7C 00 07 34 */	extsh r0, r0
lbl_804AEFAC:
/* 804AEFAC  2C 00 00 00 */	cmpwi r0, 0
/* 804AEFB0  40 82 00 14 */	bne lbl_804AEFC4
/* 804AEFB4  38 A0 00 00 */	li r5, 0
/* 804AEFB8  38 C0 00 00 */	li r6, 0
/* 804AEFBC  48 00 03 C1 */	bl aUKI_set_proc
/* 804AEFC0  48 00 00 14 */	b lbl_804AEFD4
lbl_804AEFC4:
/* 804AEFC4  38 80 00 01 */	li r4, 1
/* 804AEFC8  4B FF ED 11 */	bl aUKI_parabola_move
/* 804AEFCC  48 00 00 08 */	b lbl_804AEFD4
lbl_804AEFD0:
/* 804AEFD0  4B FF F6 D5 */	bl aUKI_force_command
lbl_804AEFD4:
/* 804AEFD4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AEFD8  7C 08 03 A6 */	mtlr r0
/* 804AEFDC  38 21 00 10 */	addi r1, r1, 0x10
/* 804AEFE0  4E 80 00 20 */	blr 
