lbl_803ED598:
/* 803ED598  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803ED59C  7C 08 02 A6 */	mflr r0
/* 803ED5A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803ED5A4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803ED5A8  93 C1 00 08 */	stw r30, 8(r1)
/* 803ED5AC  7C 7E 1B 78 */	mr r30, r3
/* 803ED5B0  4B FD 20 F9 */	bl func_803BF6A8
/* 803ED5B4  7C 7F 1B 78 */	mr r31, r3
/* 803ED5B8  4B FD 36 E1 */	bl mMsg_Check_MainNormalContinue
/* 803ED5BC  2C 03 00 00 */	cmpwi r3, 0
/* 803ED5C0  41 82 00 2C */	beq lbl_803ED5EC
/* 803ED5C4  88 9E 09 B3 */	lbz r4, 0x9b3(r30)
/* 803ED5C8  7F E3 FB 78 */	mr r3, r31
/* 803ED5CC  38 84 34 22 */	addi r4, r4, 0x3422
/* 803ED5D0  4B FD 29 F5 */	bl mMsg_Set_continue_msg_num
/* 803ED5D4  88 7E 09 B2 */	lbz r3, 0x9b2(r30)
/* 803ED5D8  38 03 00 01 */	addi r0, r3, 1
/* 803ED5DC  98 1E 09 B2 */	stb r0, 0x9b2(r30)
/* 803ED5E0  88 7E 09 B3 */	lbz r3, 0x9b3(r30)
/* 803ED5E4  38 03 00 01 */	addi r0, r3, 1
/* 803ED5E8  98 1E 09 B3 */	stb r0, 0x9b3(r30)
lbl_803ED5EC:
/* 803ED5EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803ED5F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803ED5F4  83 C1 00 08 */	lwz r30, 8(r1)
/* 803ED5F8  7C 08 03 A6 */	mtlr r0
/* 803ED5FC  38 21 00 10 */	addi r1, r1, 0x10
/* 803ED600  4E 80 00 20 */	blr 
