lbl_804AE884:
/* 804AE884  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804AE888  7C 08 02 A6 */	mflr r0
/* 804AE88C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804AE890  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804AE894  7C 9F 23 78 */	mr r31, r4
/* 804AE898  38 80 00 00 */	li r4, 0
/* 804AE89C  93 C1 00 08 */	stw r30, 8(r1)
/* 804AE8A0  7C 7E 1B 78 */	mr r30, r3
/* 804AE8A4  4B FF F4 35 */	bl aUKI_parabola_move
/* 804AE8A8  A8 7E 02 62 */	lha r3, 0x262(r30)
/* 804AE8AC  2C 03 00 00 */	cmpwi r3, 0
/* 804AE8B0  40 82 00 0C */	bne lbl_804AE8BC
/* 804AE8B4  38 00 00 00 */	li r0, 0
/* 804AE8B8  48 00 00 10 */	b lbl_804AE8C8
lbl_804AE8BC:
/* 804AE8BC  38 03 FF FF */	addi r0, r3, -1
/* 804AE8C0  B0 1E 02 62 */	sth r0, 0x262(r30)
/* 804AE8C4  7C 00 07 34 */	extsh r0, r0
lbl_804AE8C8:
/* 804AE8C8  2C 00 00 00 */	cmpwi r0, 0
/* 804AE8CC  40 82 00 20 */	bne lbl_804AE8EC
/* 804AE8D0  7F C3 F3 78 */	mr r3, r30
/* 804AE8D4  4B FF F2 75 */	bl aUKI_clear_spd
/* 804AE8D8  7F C3 F3 78 */	mr r3, r30
/* 804AE8DC  7F E4 FB 78 */	mr r4, r31
/* 804AE8E0  38 A0 00 00 */	li r5, 0
/* 804AE8E4  38 C0 00 00 */	li r6, 0
/* 804AE8E8  48 00 0A 95 */	bl aUKI_set_proc
lbl_804AE8EC:
/* 804AE8EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804AE8F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804AE8F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 804AE8F8  7C 08 03 A6 */	mtlr r0
/* 804AE8FC  38 21 00 10 */	addi r1, r1, 0x10
/* 804AE900  4E 80 00 20 */	blr 
