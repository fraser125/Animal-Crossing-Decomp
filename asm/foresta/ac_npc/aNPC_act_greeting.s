lbl_80532E6C:
/* 80532E6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80532E70  7C 08 02 A6 */	mflr r0
/* 80532E74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80532E78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80532E7C  7C 7F 1B 78 */	mr r31, r3
/* 80532E80  80 03 01 98 */	lwz r0, 0x198(r3)
/* 80532E84  2C 00 00 01 */	cmpwi r0, 1
/* 80532E88  40 82 00 98 */	bne lbl_80532F20
/* 80532E8C  88 1F 08 34 */	lbz r0, 0x834(r31)
/* 80532E90  2C 00 00 04 */	cmpwi r0, 4
/* 80532E94  41 82 00 40 */	beq lbl_80532ED4
/* 80532E98  40 80 00 10 */	bge lbl_80532EA8
/* 80532E9C  2C 00 00 03 */	cmpwi r0, 3
/* 80532EA0  40 80 00 14 */	bge lbl_80532EB4
/* 80532EA4  48 00 00 74 */	b lbl_80532F18
lbl_80532EA8:
/* 80532EA8  2C 00 00 06 */	cmpwi r0, 6
/* 80532EAC  40 80 00 6C */	bge lbl_80532F18
/* 80532EB0  48 00 00 44 */	b lbl_80532EF4
lbl_80532EB4:
/* 80532EB4  38 80 01 1C */	li r4, 0x11c
/* 80532EB8  4B FF A9 0D */	bl func_8052D7C4
/* 80532EBC  38 00 00 00 */	li r0, 0
/* 80532EC0  7F E3 FB 78 */	mr r3, r31
/* 80532EC4  98 1F 07 45 */	stb r0, 0x745(r31)
/* 80532EC8  38 80 00 07 */	li r4, 7
/* 80532ECC  4B FF FE 05 */	bl aNPC_act_greeting_chg_step
/* 80532ED0  48 00 00 50 */	b lbl_80532F20
lbl_80532ED4:
/* 80532ED4  38 80 01 1C */	li r4, 0x11c
/* 80532ED8  4B FF A8 ED */	bl func_8052D7C4
/* 80532EDC  38 00 00 00 */	li r0, 0
/* 80532EE0  7F E3 FB 78 */	mr r3, r31
/* 80532EE4  98 1F 07 50 */	stb r0, 0x750(r31)
/* 80532EE8  38 80 00 08 */	li r4, 8
/* 80532EEC  4B FF FD E5 */	bl aNPC_act_greeting_chg_step
/* 80532EF0  48 00 00 30 */	b lbl_80532F20
lbl_80532EF4:
/* 80532EF4  38 80 01 1C */	li r4, 0x11c
/* 80532EF8  4B FF A8 CD */	bl func_8052D7C4
/* 80532EFC  38 00 00 00 */	li r0, 0
/* 80532F00  7F E3 FB 78 */	mr r3, r31
/* 80532F04  98 1F 07 45 */	stb r0, 0x745(r31)
/* 80532F08  38 80 00 09 */	li r4, 9
/* 80532F0C  98 1F 07 50 */	stb r0, 0x750(r31)
/* 80532F10  4B FF FD C1 */	bl aNPC_act_greeting_chg_step
/* 80532F14  48 00 00 0C */	b lbl_80532F20
lbl_80532F18:
/* 80532F18  7F E3 FB 78 */	mr r3, r31
/* 80532F1C  4B FF F1 09 */	bl aNPC_setup_greeting_end
lbl_80532F20:
/* 80532F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80532F24  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80532F28  7C 08 03 A6 */	mtlr r0
/* 80532F2C  38 21 00 10 */	addi r1, r1, 0x10
/* 80532F30  4E 80 00 20 */	blr 
