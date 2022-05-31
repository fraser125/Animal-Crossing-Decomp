lbl_8041F198:
/* 8041F198  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041F19C  7C 08 02 A6 */	mflr r0
/* 8041F1A0  38 A0 00 05 */	li r5, 5
/* 8041F1A4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041F1A8  4B FF D8 09 */	bl show_actor_at_wade
/* 8041F1AC  3C 03 00 01 */	addis r0, r3, 1
/* 8041F1B0  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041F1B4  40 82 00 0C */	bne lbl_8041F1C0
/* 8041F1B8  38 60 00 02 */	li r3, 2
/* 8041F1BC  48 00 00 0C */	b lbl_8041F1C8
lbl_8041F1C0:
/* 8041F1C0  30 03 FF FF */	addic r0, r3, -1
/* 8041F1C4  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041F1C8:
/* 8041F1C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041F1CC  7C 08 03 A6 */	mtlr r0
/* 8041F1D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8041F1D4  4E 80 00 20 */	blr 
