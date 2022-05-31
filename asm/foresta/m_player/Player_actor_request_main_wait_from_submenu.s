lbl_804E5C90:
/* 804E5C90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E5C94  7C 08 02 A6 */	mflr r0
/* 804E5C98  3C A0 80 65 */	lis r5, lit_7381@ha /* 0x80648354@ha */
/* 804E5C9C  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E5CA0  C0 25 83 54 */	lfs f1, lit_7381@l(r5)  /* 0x80648354@l */
/* 804E5CA4  38 A0 00 1F */	li r5, 0x1f
/* 804E5CA8  C0 43 65 68 */	lfs f2, lit_604@l(r3)  /* 0x80646568@l */
/* 804E5CAC  7C 83 23 78 */	mr r3, r4
/* 804E5CB0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E5CB4  38 80 00 00 */	li r4, 0
/* 804E5CB8  4B FF FF 45 */	bl func_804E5BFC
/* 804E5CBC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E5CC0  7C 08 03 A6 */	mtlr r0
/* 804E5CC4  38 21 00 10 */	addi r1, r1, 0x10
/* 804E5CC8  4E 80 00 20 */	blr 
