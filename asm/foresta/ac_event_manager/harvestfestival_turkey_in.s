lbl_80421878:
/* 80421878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042187C  7C 08 02 A6 */	mflr r0
/* 80421880  38 A0 00 51 */	li r5, 0x51
/* 80421884  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421888  4B FF B1 29 */	bl show_actor_at_wade
/* 8042188C  3C 03 00 01 */	addis r0, r3, 1
/* 80421890  28 00 FF FF */	cmplwi r0, 0xffff
/* 80421894  40 82 00 0C */	bne lbl_804218A0
/* 80421898  38 60 00 02 */	li r3, 2
/* 8042189C  48 00 00 0C */	b lbl_804218A8
lbl_804218A0:
/* 804218A0  30 03 FF FF */	addic r0, r3, -1
/* 804218A4  7C 60 19 10 */	subfe r3, r0, r3
lbl_804218A8:
/* 804218A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804218AC  7C 08 03 A6 */	mtlr r0
/* 804218B0  38 21 00 10 */	addi r1, r1, 0x10
/* 804218B4  4E 80 00 20 */	blr 
