lbl_8050C5C0:
/* 8050C5C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050C5C4  7C 08 02 A6 */	mflr r0
/* 8050C5C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050C5CC  80 83 01 7C */	lwz r4, 0x17c(r3)
/* 8050C5D0  38 04 FF F1 */	addi r0, r4, -15
/* 8050C5D4  90 03 01 7C */	stw r0, 0x17c(r3)
/* 8050C5D8  80 03 01 7C */	lwz r0, 0x17c(r3)
/* 8050C5DC  2C 00 00 00 */	cmpwi r0, 0
/* 8050C5E0  40 80 00 14 */	bge lbl_8050C5F4
/* 8050C5E4  38 00 00 00 */	li r0, 0
/* 8050C5E8  90 03 01 7C */	stw r0, 0x17c(r3)
/* 8050C5EC  4B E6 7E 55 */	bl Actor_delete
/* 8050C5F0  48 00 00 18 */	b lbl_8050C608
lbl_8050C5F4:
/* 8050C5F4  3C A0 80 65 */	lis r5, lit_496@ha /* 0x80648E68@ha */
/* 8050C5F8  3C 80 80 65 */	lis r4, lit_497@ha /* 0x80648E6C@ha */
/* 8050C5FC  C0 25 8E 68 */	lfs f1, lit_496@l(r5)  /* 0x80648E68@l */
/* 8050C600  C0 44 8E 6C */	lfs f2, lit_497@l(r4)  /* 0x80648E6C@l */
/* 8050C604  4B FF FD 11 */	bl aANT_calc_scale
lbl_8050C608:
/* 8050C608  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050C60C  7C 08 03 A6 */	mtlr r0
/* 8050C610  38 21 00 10 */	addi r1, r1, 0x10
/* 8050C614  4E 80 00 20 */	blr 
