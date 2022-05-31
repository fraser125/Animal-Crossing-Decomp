lbl_8041EF54:
/* 8041EF54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041EF58  7C 08 02 A6 */	mflr r0
/* 8041EF5C  38 A0 00 51 */	li r5, 0x51
/* 8041EF60  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041EF64  4B FF DA 4D */	bl show_actor_at_wade
/* 8041EF68  3C 03 00 01 */	addis r0, r3, 1
/* 8041EF6C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041EF70  40 82 00 0C */	bne lbl_8041EF7C
/* 8041EF74  38 60 00 02 */	li r3, 2
/* 8041EF78  48 00 00 0C */	b lbl_8041EF84
lbl_8041EF7C:
/* 8041EF7C  30 03 FF FF */	addic r0, r3, -1
/* 8041EF80  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041EF84:
/* 8041EF84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041EF88  7C 08 03 A6 */	mtlr r0
/* 8041EF8C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041EF90  4E 80 00 20 */	blr 
