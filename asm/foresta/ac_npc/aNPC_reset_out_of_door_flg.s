lbl_8053A91C:
/* 8053A91C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053A920  7C 08 02 A6 */	mflr r0
/* 8053A924  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053A928  80 03 09 C8 */	lwz r0, 0x9c8(r3)
/* 8053A92C  7C 00 20 40 */	cmplw r0, r4
/* 8053A930  40 82 00 08 */	bne lbl_8053A938
/* 8053A934  4B FF FF 91 */	bl aNPC_force_reset_out_of_door_flg
lbl_8053A938:
/* 8053A938  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053A93C  7C 08 03 A6 */	mtlr r0
/* 8053A940  38 21 00 10 */	addi r1, r1, 0x10
/* 8053A944  4E 80 00 20 */	blr 
