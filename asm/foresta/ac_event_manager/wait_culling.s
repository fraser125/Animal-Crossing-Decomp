lbl_8041DE18:
/* 8041DE18  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8041DE1C  7C 08 02 A6 */	mflr r0
/* 8041DE20  90 01 00 14 */	stw r0, 0x14(r1)
/* 8041DE24  80 64 00 00 */	lwz r3, 0(r4)
/* 8041DE28  38 80 00 02 */	li r4, 2
/* 8041DE2C  4B F7 FC D5 */	bl mEv_check_status
/* 8041DE30  30 03 FF FF */	addic r0, r3, -1
/* 8041DE34  7C 60 19 10 */	subfe r3, r0, r3
/* 8041DE38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8041DE3C  7C 08 03 A6 */	mtlr r0
/* 8041DE40  38 21 00 10 */	addi r1, r1, 0x10
/* 8041DE44  4E 80 00 20 */	blr 
