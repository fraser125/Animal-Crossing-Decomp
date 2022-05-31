lbl_805FCB58:
/* 805FCB58  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805FCB5C  7C 08 02 A6 */	mflr r0
/* 805FCB60  90 01 00 14 */	stw r0, 0x14(r1)
/* 805FCB64  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805FCB68  80 C6 09 C0 */	lwz r6, 0x9c0(r6)
/* 805FCB6C  80 06 0B B8 */	lwz r0, 0xbb8(r6)
/* 805FCB70  2C 00 00 02 */	cmpwi r0, 2
/* 805FCB74  40 82 00 0C */	bne lbl_805FCB80
/* 805FCB78  4B FF C9 85 */	bl mTG_cpack_change_mail_mark
/* 805FCB7C  48 00 00 08 */	b lbl_805FCB84
lbl_805FCB80:
/* 805FCB80  4B FF FE C9 */	bl mTG_move_base
lbl_805FCB84:
/* 805FCB84  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805FCB88  7C 08 03 A6 */	mtlr r0
/* 805FCB8C  38 21 00 10 */	addi r1, r1, 0x10
/* 805FCB90  4E 80 00 20 */	blr 
