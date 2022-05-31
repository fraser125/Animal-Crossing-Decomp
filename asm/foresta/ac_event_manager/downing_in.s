lbl_8041EB14:
/* 8041EB14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041EB18  7C 08 02 A6 */	mflr r0
/* 8041EB1C  38 A0 00 51 */	li r5, 0x51
/* 8041EB20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041EB24  4B FF E0 8D */	bl show_actor_at_wade_checkless
/* 8041EB28  3C 03 00 01 */	addis r0, r3, 1
/* 8041EB2C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041EB30  40 82 00 0C */	bne lbl_8041EB3C
/* 8041EB34  38 60 00 02 */	li r3, 2
/* 8041EB38  48 00 00 0C */	b lbl_8041EB44
lbl_8041EB3C:
/* 8041EB3C  30 03 FF FF */	addic r0, r3, -1
/* 8041EB40  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041EB44:
/* 8041EB44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041EB48  7C 08 03 A6 */	mtlr r0
/* 8041EB4C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041EB50  4E 80 00 20 */	blr 
