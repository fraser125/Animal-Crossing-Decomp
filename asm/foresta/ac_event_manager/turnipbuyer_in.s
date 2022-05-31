lbl_8041E978:
/* 8041E978  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E97C  7C 08 02 A6 */	mflr r0
/* 8041E980  38 A0 00 51 */	li r5, 0x51
/* 8041E984  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E988  4B FF E0 29 */	bl show_actor_at_wade
/* 8041E98C  3C 03 00 01 */	addis r0, r3, 1
/* 8041E990  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041E994  40 82 00 0C */	bne lbl_8041E9A0
/* 8041E998  38 60 00 02 */	li r3, 2
/* 8041E99C  48 00 00 0C */	b lbl_8041E9A8
lbl_8041E9A0:
/* 8041E9A0  30 03 FF FF */	addic r0, r3, -1
/* 8041E9A4  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041E9A8:
/* 8041E9A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E9AC  7C 08 03 A6 */	mtlr r0
/* 8041E9B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E9B4  4E 80 00 20 */	blr 
