lbl_805A70F0:
/* 805A70F0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A70F4  7C 08 02 A6 */	mflr r0
/* 805A70F8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A70FC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A7100  93 C1 00 28 */	stw r30, 0x28(r1)
/* 805A7104  7C 7E 1B 78 */	mr r30, r3
/* 805A7108  80 03 01 50 */	lwz r0, 0x150(r3)
/* 805A710C  28 00 00 00 */	cmplwi r0, 0
/* 805A7110  41 82 00 5C */	beq lbl_805A716C
/* 805A7114  80 9E 01 4C */	lwz r4, 0x14c(r30)
/* 805A7118  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A711C  38 A1 00 10 */	addi r5, r1, 0x10
/* 805A7120  38 84 01 94 */	addi r4, r4, 0x194
/* 805A7124  4B E1 3E 21 */	bl xyz_t_add
/* 805A7128  A8 9E 00 DE */	lha r4, 0xde(r30)
/* 805A712C  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 805A7130  83 E3 52 F0 */	lwz r31, data_811C52F0@l(r3)  /* 0x811C52F0@l */
/* 805A7134  3C 84 00 01 */	addis r4, r4, 1
/* 805A7138  38 04 80 00 */	addi r0, r4, -32768
/* 805A713C  7F E3 FB 78 */	mr r3, r31
/* 805A7140  B0 01 00 0A */	sth r0, 0xa(r1)
/* 805A7144  4B E3 24 FD */	bl get_player_actor_withoutCheck
/* 805A7148  81 83 13 10 */	lwz r12, 0x1310(r3)
/* 805A714C  7F E3 FB 78 */	mr r3, r31
/* 805A7150  38 81 00 10 */	addi r4, r1, 0x10
/* 805A7154  38 A1 00 08 */	addi r5, r1, 8
/* 805A7158  38 C0 00 2E */	li r6, 0x2e
/* 805A715C  7D 89 03 A6 */	mtctr r12
/* 805A7160  4E 80 04 21 */	bctrl 
/* 805A7164  A8 7E 00 E0 */	lha r3, 0xe0(r30)
/* 805A7168  4B E3 75 59 */	bl mPlib_Set_boat_angleZ
lbl_805A716C:
/* 805A716C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A7170  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A7174  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 805A7178  7C 08 03 A6 */	mtlr r0
/* 805A717C  38 21 00 30 */	addi r1, r1, 0x30
/* 805A7180  4E 80 00 20 */	blr 
