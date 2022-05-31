lbl_8041F568:
/* 8041F568  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041F56C  7C 08 02 A6 */	mflr r0
/* 8041F570  38 A0 00 05 */	li r5, 5
/* 8041F574  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041F578  4B FF D6 39 */	bl show_actor_at_wade_checkless
/* 8041F57C  3C 03 00 01 */	addis r0, r3, 1
/* 8041F580  28 00 FF FF */	cmplwi r0, 0xffff
/* 8041F584  40 82 00 0C */	bne lbl_8041F590
/* 8041F588  38 60 00 02 */	li r3, 2
/* 8041F58C  48 00 00 0C */	b lbl_8041F598
lbl_8041F590:
/* 8041F590  30 03 FF FF */	addic r0, r3, -1
/* 8041F594  7C 60 19 10 */	subfe r3, r0, r3
lbl_8041F598:
/* 8041F598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041F59C  7C 08 03 A6 */	mtlr r0
/* 8041F5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 8041F5A4  4E 80 00 20 */	blr 
