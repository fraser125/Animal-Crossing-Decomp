lbl_80421158:
/* 80421158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042115C  7C 08 02 A6 */	mflr r0
/* 80421160  38 A0 00 51 */	li r5, 0x51
/* 80421164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80421168  4B FF BB 7D */	bl show_actor_at_wade_checkfgcol
/* 8042116C  3C 03 00 01 */	addis r0, r3, 1
/* 80421170  28 00 FF FF */	cmplwi r0, 0xffff
/* 80421174  40 82 00 0C */	bne lbl_80421180
/* 80421178  38 60 00 02 */	li r3, 2
/* 8042117C  48 00 00 0C */	b lbl_80421188
lbl_80421180:
/* 80421180  30 03 FF FF */	addic r0, r3, -1
/* 80421184  7C 60 19 10 */	subfe r3, r0, r3
lbl_80421188:
/* 80421188  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042118C  7C 08 03 A6 */	mtlr r0
/* 80421190  38 21 00 10 */	addi r1, r1, 0x10
/* 80421194  4E 80 00 20 */	blr 
