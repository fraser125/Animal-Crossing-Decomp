lbl_8041F38C:
/* 8041F38C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041F390  7C 08 02 A6 */	mflr r0
/* 8041F394  38 A0 00 07 */	li r5, 7
/* 8041F398  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041F39C  4B FF D9 49 */	bl show_actor_at_wade_checkfgcol
/* 8041F3A0  3C 03 00 01 */	addis r0, r3, 1
/* 8041F3A4  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041F3A8  40 82 00 0C */	bne lbl_8041F3B4
/* 8041F3AC  38 60 00 02 */	li r3, 2
/* 8041F3B0  48 00 00 0C */	b lbl_8041F3BC
lbl_8041F3B4:
/* 8041F3B4  30 03 FF FF */	addic r0, r3, -1
/* 8041F3B8  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041F3BC:
/* 8041F3BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041F3C0  7C 08 03 A6 */	mtlr r0
/* 8041F3C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8041F3C8  4E 80 00 20 */	blr 
