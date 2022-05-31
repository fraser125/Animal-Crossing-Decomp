lbl_8042048C:
/* 8042048C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80420490  7C 08 02 A6 */	mflr r0
/* 80420494  38 A0 00 04 */	li r5, 4
/* 80420498  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042049C  4B FF C8 49 */	bl show_actor_at_wade_checkfgcol
/* 804204A0  3C 03 00 01 */	addis r0, r3, 1
/* 804204A4  28 00 FF FF */	cmplwi r0, 0xffff
/* 804204A8  40 82 00 0C */	bne lbl_804204B4
/* 804204AC  38 60 00 02 */	li r3, 2
/* 804204B0  48 00 00 0C */	b lbl_804204BC
lbl_804204B4:
/* 804204B4  30 03 FF FF */	addic r0, r3, -1
/* 804204B8  7C 60 19 10 */	subfe r3, r0, r3
lbl_804204BC:
/* 804204BC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804204C0  7C 08 03 A6 */	mtlr r0
/* 804204C4  38 21 00 10 */	addi r1, r1, 0x10
/* 804204C8  4E 80 00 20 */	blr 
