lbl_804A959C:
/* 804A959C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804A95A0  7C 08 02 A6 */	mflr r0
/* 804A95A4  38 80 00 00 */	li r4, 0
/* 804A95A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804A95AC  4B FF FF 85 */	bl aTPT_calc_scale
/* 804A95B0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804A95B4  7C 08 03 A6 */	mtlr r0
/* 804A95B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804A95BC  4E 80 00 20 */	blr 
