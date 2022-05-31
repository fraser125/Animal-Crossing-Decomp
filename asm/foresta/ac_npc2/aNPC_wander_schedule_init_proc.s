lbl_805432B4:
/* 805432B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805432B8  7C 08 02 A6 */	mflr r0
/* 805432BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805432C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805432C4  7C 9F 23 78 */	mr r31, r4
/* 805432C8  38 80 00 00 */	li r4, 0
/* 805432CC  93 C1 00 08 */	stw r30, 8(r1)
/* 805432D0  7C 7E 1B 78 */	mr r30, r3
/* 805432D4  4B FF FD D1 */	bl aNPC_set_hide_flg
/* 805432D8  7F C3 F3 78 */	mr r3, r30
/* 805432DC  7F E4 FB 78 */	mr r4, r31
/* 805432E0  38 A0 00 02 */	li r5, 2
/* 805432E4  4B FF F2 FD */	bl aNPC_think_init_proc
/* 805432E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805432EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805432F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805432F4  7C 08 03 A6 */	mtlr r0
/* 805432F8  38 21 00 10 */	addi r1, r1, 0x10
/* 805432FC  4E 80 00 20 */	blr 
