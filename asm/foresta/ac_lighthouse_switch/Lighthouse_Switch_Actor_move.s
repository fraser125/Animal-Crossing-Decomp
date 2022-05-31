lbl_8042D0B4:
/* 8042D0B4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042D0B8  7C 08 02 A6 */	mflr r0
/* 8042D0BC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042D0C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042D0C4  7C 9F 23 78 */	mr r31, r4
/* 8042D0C8  93 C1 00 08 */	stw r30, 8(r1)
/* 8042D0CC  7C 7E 1B 78 */	mr r30, r3
/* 8042D0D0  4B FF FE 71 */	bl aLS_CheckPlayerAction
/* 8042D0D4  7F C3 F3 78 */	mr r3, r30
/* 8042D0D8  7F E4 FB 78 */	mr r4, r31
/* 8042D0DC  4B FF FF 55 */	bl aLS_AutoSwitch
/* 8042D0E0  7F E4 FB 78 */	mr r4, r31
/* 8042D0E4  7F C5 F3 78 */	mr r5, r30
/* 8042D0E8  38 7E 03 10 */	addi r3, r30, 0x310
/* 8042D0EC  4B FF FC 31 */	bl aLS_PoleMove
/* 8042D0F0  7F E4 FB 78 */	mr r4, r31
/* 8042D0F4  7F C5 F3 78 */	mr r5, r30
/* 8042D0F8  38 7E 01 78 */	addi r3, r30, 0x178
/* 8042D0FC  4B FF FC 65 */	bl aLS_SwitchMove
/* 8042D100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042D104  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042D108  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042D10C  7C 08 03 A6 */	mtlr r0
/* 8042D110  38 21 00 10 */	addi r1, r1, 0x10
/* 8042D114  4E 80 00 20 */	blr 
