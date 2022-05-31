lbl_804201BC:
/* 804201BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804201C0  7C 08 02 A6 */	mflr r0
/* 804201C4  38 A0 00 05 */	li r5, 5
/* 804201C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804201CC  4B FF C9 E5 */	bl show_actor_at_wade_checkless
/* 804201D0  3C 03 00 01 */	addis r0, r3, 1
/* 804201D4  28 00 FF FF */	cmplwi r0, 0xffff
/* 804201D8  40 82 00 0C */	bne lbl_804201E4
/* 804201DC  38 60 00 02 */	li r3, 2
/* 804201E0  48 00 00 0C */	b lbl_804201EC
lbl_804201E4:
/* 804201E4  30 03 FF FF */	addic r0, r3, -1
/* 804201E8  7C 60 19 10 */	subfe r3, r0, r3
lbl_804201EC:
/* 804201EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804201F0  7C 08 03 A6 */	mtlr r0
/* 804201F4  38 21 00 10 */	addi r1, r1, 0x10
/* 804201F8  4E 80 00 20 */	blr 
