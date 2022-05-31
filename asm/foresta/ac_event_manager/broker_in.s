lbl_8041E13C:
/* 8041E13C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041E140  7C 08 02 A6 */	mflr r0
/* 8041E144  38 A0 00 01 */	li r5, 1
/* 8041E148  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041E14C  4B FF EA 65 */	bl show_actor_at_wade_checkless
/* 8041E150  3C 03 00 01 */	addis r0, r3, 1
/* 8041E154  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041E158  40 82 00 0C */	bne lbl_8041E164
/* 8041E15C  38 60 00 02 */	li r3, 2
/* 8041E160  48 00 00 0C */	b lbl_8041E16C
lbl_8041E164:
/* 8041E164  30 03 FF FF */	addic r0, r3, -1
/* 8041E168  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041E16C:
/* 8041E16C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041E170  7C 08 03 A6 */	mtlr r0
/* 8041E174  38 21 00 10 */	addi r1, r1, 0x10
/* 8041E178  4E 80 00 20 */	blr 
