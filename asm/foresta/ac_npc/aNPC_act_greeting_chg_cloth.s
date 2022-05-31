lbl_80532F34:
/* 80532F34  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80532F38  7C 08 02 A6 */	mflr r0
/* 80532F3C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80532F40  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80532F44  7C 7F 1B 78 */	mr r31, r3
/* 80532F48  48 00 16 05 */	bl aNPC_act_get_chg_cloth
/* 80532F4C  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 80532F50  28 00 00 FF */	cmplwi r0, 0xff
/* 80532F54  40 82 00 0C */	bne lbl_80532F60
/* 80532F58  7F E3 FB 78 */	mr r3, r31
/* 80532F5C  4B FF F0 C9 */	bl aNPC_setup_greeting_end
lbl_80532F60:
/* 80532F60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80532F64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80532F68  7C 08 03 A6 */	mtlr r0
/* 80532F6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80532F70  4E 80 00 20 */	blr 
