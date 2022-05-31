lbl_80501D80:
/* 80501D80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80501D84  7C 08 02 A6 */	mflr r0
/* 80501D88  90 01 00 14 */	stw r0, 0x14(r1)
/* 80501D8C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80501D90  7C 9F 23 78 */	mr r31, r4
/* 80501D94  7F E5 FB 78 */	mr r5, r31
/* 80501D98  38 80 00 5D */	li r4, 0x5d
/* 80501D9C  93 C1 00 08 */	stw r30, 8(r1)
/* 80501DA0  7C 7E 1B 78 */	mr r30, r3
/* 80501DA4  4B FD 86 B5 */	bl Player_actor_check_request_main_able
/* 80501DA8  2C 03 00 00 */	cmpwi r3, 0
/* 80501DAC  41 82 00 1C */	beq lbl_80501DC8
/* 80501DB0  7F C3 F3 78 */	mr r3, r30
/* 80501DB4  7F E5 FB 78 */	mr r5, r31
/* 80501DB8  38 80 00 5D */	li r4, 0x5d
/* 80501DBC  4B FD 32 59 */	bl Player_actor_request_main_index
/* 80501DC0  38 60 00 01 */	li r3, 1
/* 80501DC4  48 00 00 08 */	b lbl_80501DCC
lbl_80501DC8:
/* 80501DC8  38 60 00 00 */	li r3, 0
lbl_80501DCC:
/* 80501DCC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80501DD0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80501DD4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80501DD8  7C 08 03 A6 */	mtlr r0
/* 80501DDC  38 21 00 10 */	addi r1, r1, 0x10
/* 80501DE0  4E 80 00 20 */	blr 
