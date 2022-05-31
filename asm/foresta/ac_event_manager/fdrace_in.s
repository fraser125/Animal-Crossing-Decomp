lbl_8041FEAC:
/* 8041FEAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041FEB0  7C 08 02 A6 */	mflr r0
/* 8041FEB4  38 A0 00 05 */	li r5, 5
/* 8041FEB8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041FEBC  4B FF CC F5 */	bl show_actor_at_wade_checkless
/* 8041FEC0  3C 03 00 01 */	addis r0, r3, 1
/* 8041FEC4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041FEC8  40 82 00 0C */	bne lbl_8041FED4
/* 8041FECC  38 60 00 02 */	li r3, 2
/* 8041FED0  48 00 00 0C */	b lbl_8041FEDC
lbl_8041FED4:
/* 8041FED4  30 03 FF FF */	addic r0, r3, -1
/* 8041FED8  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041FEDC:
/* 8041FEDC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041FEE0  7C 08 03 A6 */	mtlr r0
/* 8041FEE4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041FEE8  4E 80 00 20 */	blr 
