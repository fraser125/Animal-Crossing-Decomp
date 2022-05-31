lbl_80534E68:
/* 80534E68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80534E6C  7C 08 02 A6 */	mflr r0
/* 80534E70  90 01 00 14 */	stw r0, 0x14(r1)
/* 80534E74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80534E78  7C 7F 1B 78 */	mr r31, r3
/* 80534E7C  4B FF C5 C1 */	bl aNPC_act_anm_seq
/* 80534E80  2C 03 00 00 */	cmpwi r3, 0
/* 80534E84  40 82 00 18 */	bne lbl_80534E9C
/* 80534E88  38 00 01 2C */	li r0, 0x12c
/* 80534E8C  7F E3 FB 78 */	mr r3, r31
/* 80534E90  90 1F 09 88 */	stw r0, 0x988(r31)
/* 80534E94  38 80 00 03 */	li r4, 3
/* 80534E98  48 00 00 85 */	bl aNPC_act_react_tool_chg_step
lbl_80534E9C:
/* 80534E9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80534EA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80534EA4  7C 08 03 A6 */	mtlr r0
/* 80534EA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80534EAC  4E 80 00 20 */	blr 
