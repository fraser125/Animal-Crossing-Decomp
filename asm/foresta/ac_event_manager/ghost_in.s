lbl_80420D50:
/* 80420D50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80420D54  7C 08 02 A6 */	mflr r0
/* 80420D58  38 A0 00 51 */	li r5, 0x51
/* 80420D5C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80420D60  4B FF BF 85 */	bl show_actor_at_wade_checkfgcol
/* 80420D64  3C 03 00 01 */	addis r0, r3, 1
/* 80420D68  28 00 FF FF */	cmplwi r0, 0xffff
/* 80420D6C  40 82 00 0C */	bne lbl_80420D78
/* 80420D70  38 60 00 02 */	li r3, 2
/* 80420D74  48 00 00 0C */	b lbl_80420D80
lbl_80420D78:
/* 80420D78  30 03 FF FF */	addic r0, r3, -1
/* 80420D7C  7C 60 19 10 */	subfe r3, r0, r3
lbl_80420D80:
/* 80420D80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80420D84  7C 08 03 A6 */	mtlr r0
/* 80420D88  38 21 00 10 */	addi r1, r1, 0x10
/* 80420D8C  4E 80 00 20 */	blr 
