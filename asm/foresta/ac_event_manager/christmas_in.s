lbl_8041ED64:
/* 8041ED64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041ED68  7C 08 02 A6 */	mflr r0
/* 8041ED6C  38 A0 00 51 */	li r5, 0x51
/* 8041ED70  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041ED74  4B FF DC 3D */	bl show_actor_at_wade
/* 8041ED78  3C 03 00 01 */	addis r0, r3, 1
/* 8041ED7C  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041ED80  40 82 00 0C */	bne lbl_8041ED8C
/* 8041ED84  38 60 00 02 */	li r3, 2
/* 8041ED88  48 00 00 0C */	b lbl_8041ED94
lbl_8041ED8C:
/* 8041ED8C  30 03 FF FF */	addic r0, r3, -1
/* 8041ED90  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041ED94:
/* 8041ED94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041ED98  7C 08 03 A6 */	mtlr r0
/* 8041ED9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8041EDA0  4E 80 00 20 */	blr 
