lbl_80537E24:
/* 80537E24  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80537E28  7C 08 02 A6 */	mflr r0
/* 80537E2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80537E30  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80537E34  7C 9F 23 78 */	mr r31, r4
/* 80537E38  38 80 00 00 */	li r4, 0
/* 80537E3C  93 C1 00 08 */	stw r30, 8(r1)
/* 80537E40  7C 7E 1B 78 */	mr r30, r3
/* 80537E44  4B FF FE 9D */	bl aNPC_set_hide_flg
/* 80537E48  7F C3 F3 78 */	mr r3, r30
/* 80537E4C  7F E4 FB 78 */	mr r4, r31
/* 80537E50  38 A0 00 00 */	li r5, 0
/* 80537E54  4B FF E9 E9 */	bl aNPC_think_init_proc
/* 80537E58  38 00 00 37 */	li r0, 0x37
/* 80537E5C  90 1E 08 40 */	stw r0, 0x840(r30)
/* 80537E60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80537E64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80537E68  83 C1 00 08 */	lwz r30, 8(r1)
/* 80537E6C  7C 08 03 A6 */	mtlr r0
/* 80537E70  38 21 00 10 */	addi r1, r1, 0x10
/* 80537E74  4E 80 00 20 */	blr 
