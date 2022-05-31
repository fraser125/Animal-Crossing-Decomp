lbl_80421F34:
/* 80421F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80421F38  7C 08 02 A6 */	mflr r0
/* 80421F3C  38 A0 00 51 */	li r5, 0x51
/* 80421F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421F44  4B FF AD A1 */	bl show_actor_at_wade_checkfgcol
/* 80421F48  3C 03 00 01 */	addis r0, r3, 1
/* 80421F4C  28 00 FF FF */	cmplwi r0, 0xffff
/* 80421F50  40 82 00 0C */	bne lbl_80421F5C
/* 80421F54  38 60 00 02 */	li r3, 2
/* 80421F58  48 00 00 0C */	b lbl_80421F64
lbl_80421F5C:
/* 80421F5C  30 03 FF FF */	addic r0, r3, -1
/* 80421F60  7C 60 19 10 */	subfe r3, r0, r3
lbl_80421F64:
/* 80421F64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80421F68  7C 08 03 A6 */	mtlr r0
/* 80421F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80421F70  4E 80 00 20 */	blr 
