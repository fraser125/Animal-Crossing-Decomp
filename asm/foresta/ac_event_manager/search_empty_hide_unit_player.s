lbl_8041BA54:
/* 8041BA54  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041BA58  7C 08 02 A6 */	mflr r0
/* 8041BA5C  38 E0 00 03 */	li r7, 3
/* 8041BA60  39 00 00 02 */	li r8, 2
/* 8041BA64  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041BA68  4B FF FE 39 */	bl search_empty_hide_unit_sub
/* 8041BA6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041BA70  7C 08 03 A6 */	mtlr r0
/* 8041BA74  38 21 00 10 */	addi r1, r1, 0x10
/* 8041BA78  4E 80 00 20 */	blr 
