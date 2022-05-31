lbl_8041E4B8:
/* 8041E4B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E4BC  7C 08 02 A6 */	mflr r0
/* 8041E4C0  38 A0 00 51 */	li r5, 0x51
/* 8041E4C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E4C8  4B FF E4 E9 */	bl show_actor_at_wade
/* 8041E4CC  3C 03 00 01 */	addis r0, r3, 1
/* 8041E4D0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041E4D4  40 82 00 0C */	bne lbl_8041E4E0
/* 8041E4D8  38 60 00 02 */	li r3, 2
/* 8041E4DC  48 00 00 0C */	b lbl_8041E4E8
lbl_8041E4E0:
/* 8041E4E0  30 03 FF FF */	addic r0, r3, -1
/* 8041E4E4  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041E4E8:
/* 8041E4E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E4EC  7C 08 03 A6 */	mtlr r0
/* 8041E4F0  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E4F4  4E 80 00 20 */	blr 
