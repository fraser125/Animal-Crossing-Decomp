lbl_8041DF44:
/* 8041DF44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041DF48  7C 08 02 A6 */	mflr r0
/* 8041DF4C  38 A0 00 51 */	li r5, 0x51
/* 8041DF50  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041DF54  4B FF EA 5D */	bl show_actor_at_wade
/* 8041DF58  3C 03 00 01 */	addis r0, r3, 1
/* 8041DF5C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041DF60  40 82 00 0C */	bne lbl_8041DF6C
/* 8041DF64  38 60 00 02 */	li r3, 2
/* 8041DF68  48 00 00 0C */	b lbl_8041DF74
lbl_8041DF6C:
/* 8041DF6C  30 03 FF FF */	addic r0, r3, -1
/* 8041DF70  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041DF74:
/* 8041DF74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041DF78  7C 08 03 A6 */	mtlr r0
/* 8041DF7C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041DF80  4E 80 00 20 */	blr 
