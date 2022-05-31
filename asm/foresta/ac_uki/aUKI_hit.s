lbl_804AEAD4:
/* 804AEAD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AEAD8  7C 08 02 A6 */	mflr r0
/* 804AEADC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AEAE0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AEAE4  7C 7F 1B 78 */	mr r31, r3
/* 804AEAE8  A8 63 02 62 */	lha r3, 0x262(r3)
/* 804AEAEC  2C 03 00 00 */	cmpwi r3, 0
/* 804AEAF0  40 82 00 0C */	bne lbl_804AEAFC
/* 804AEAF4  38 00 00 00 */	li r0, 0
/* 804AEAF8  48 00 00 10 */	b lbl_804AEB08
lbl_804AEAFC:
/* 804AEAFC  38 03 FF FF */	addi r0, r3, -1
/* 804AEB00  B0 1F 02 62 */	sth r0, 0x262(r31)
/* 804AEB04  7C 00 07 34 */	extsh r0, r0
lbl_804AEB08:
/* 804AEB08  2C 00 00 00 */	cmpwi r0, 0
/* 804AEB0C  40 82 00 44 */	bne lbl_804AEB50
/* 804AEB10  80 1F 02 8C */	lwz r0, 0x28c(r31)
/* 804AEB14  2C 00 00 05 */	cmpwi r0, 5
/* 804AEB18  40 82 00 18 */	bne lbl_804AEB30
/* 804AEB1C  7F E3 FB 78 */	mr r3, r31
/* 804AEB20  38 A0 00 08 */	li r5, 8
/* 804AEB24  38 C0 00 00 */	li r6, 0
/* 804AEB28  48 00 08 55 */	bl aUKI_set_proc
/* 804AEB2C  48 00 00 3C */	b lbl_804AEB68
lbl_804AEB30:
/* 804AEB30  38 00 00 00 */	li r0, 0
/* 804AEB34  7F E3 FB 78 */	mr r3, r31
/* 804AEB38  90 1F 02 88 */	stw r0, 0x288(r31)
/* 804AEB3C  38 A0 00 00 */	li r5, 0
/* 804AEB40  38 C0 00 00 */	li r6, 0
/* 804AEB44  90 1F 02 8C */	stw r0, 0x28c(r31)
/* 804AEB48  48 00 08 35 */	bl aUKI_set_proc
/* 804AEB4C  48 00 00 1C */	b lbl_804AEB68
lbl_804AEB50:
/* 804AEB50  7F E3 FB 78 */	mr r3, r31
/* 804AEB54  38 80 00 01 */	li r4, 1
/* 804AEB58  4B FF F1 81 */	bl aUKI_parabola_move
/* 804AEB5C  7F E3 FB 78 */	mr r3, r31
/* 804AEB60  38 80 00 02 */	li r4, 2
/* 804AEB64  4B FF F1 75 */	bl aUKI_parabola_move
lbl_804AEB68:
/* 804AEB68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AEB6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AEB70  7C 08 03 A6 */	mtlr r0
/* 804AEB74  38 21 00 10 */	addi r1, r1, 0x10
/* 804AEB78  4E 80 00 20 */	blr 
