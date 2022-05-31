lbl_80532E04:
/* 80532E04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80532E08  7C 08 02 A6 */	mflr r0
/* 80532E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80532E10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80532E14  93 C1 00 08 */	stw r30, 8(r1)
/* 80532E18  7C 7E 1B 78 */	mr r30, r3
/* 80532E1C  80 63 08 F0 */	lwz r3, 0x8f0(r3)
/* 80532E20  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 80532E24  7C 7F 1B 78 */	mr r31, r3
/* 80532E28  28 00 00 02 */	cmplwi r0, 2
/* 80532E2C  40 82 00 28 */	bne lbl_80532E54
/* 80532E30  4B FF FE 75 */	bl aNPC_get_greeting_step
/* 80532E34  7C 64 1B 78 */	mr r4, r3
/* 80532E38  7F E3 FB 78 */	mr r3, r31
/* 80532E3C  4B FF FE 95 */	bl aNPC_act_greeting_chg_step
/* 80532E40  7F C3 F3 78 */	mr r3, r30
/* 80532E44  4B FF FE 61 */	bl aNPC_get_greeting_step
/* 80532E48  7C 64 1B 78 */	mr r4, r3
/* 80532E4C  7F C3 F3 78 */	mr r3, r30
/* 80532E50  4B FF FE 81 */	bl aNPC_act_greeting_chg_step
lbl_80532E54:
/* 80532E54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80532E58  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80532E5C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80532E60  7C 08 03 A6 */	mtlr r0
/* 80532E64  38 21 00 10 */	addi r1, r1, 0x10
/* 80532E68  4E 80 00 20 */	blr 
