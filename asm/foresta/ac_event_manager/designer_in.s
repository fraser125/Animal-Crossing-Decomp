lbl_8041E2C4:
/* 8041E2C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E2C8  7C 08 02 A6 */	mflr r0
/* 8041E2CC  38 A0 00 01 */	li r5, 1
/* 8041E2D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E2D4  4B FF E6 DD */	bl show_actor_at_wade
/* 8041E2D8  3C 03 00 01 */	addis r0, r3, 1
/* 8041E2DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041E2E0  40 82 00 0C */	bne lbl_8041E2EC
/* 8041E2E4  38 60 00 02 */	li r3, 2
/* 8041E2E8  48 00 00 0C */	b lbl_8041E2F4
lbl_8041E2EC:
/* 8041E2EC  30 03 FF FF */	addic r0, r3, -1
/* 8041E2F0  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041E2F4:
/* 8041E2F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E2F8  7C 08 03 A6 */	mtlr r0
/* 8041E2FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E300  4E 80 00 20 */	blr 
