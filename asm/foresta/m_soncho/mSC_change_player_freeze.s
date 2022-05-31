lbl_803EDD70:
/* 803EDD70  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EDD74  7C 08 02 A6 */	mflr r0
/* 803EDD78  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EDD7C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EDD80  7C 7F 1B 78 */	mr r31, r3
/* 803EDD84  4B FE B8 ED */	bl mPlib_get_player_actor_main_index
/* 803EDD88  2C 03 00 4A */	cmpwi r3, 0x4a
/* 803EDD8C  41 82 00 14 */	beq lbl_803EDDA0
/* 803EDD90  7F E3 FB 78 */	mr r3, r31
/* 803EDD94  38 80 00 00 */	li r4, 0
/* 803EDD98  38 A0 00 00 */	li r5, 0
/* 803EDD9C  4B FE CF E9 */	bl mPlib_request_main_demo_wait_type1
lbl_803EDDA0:
/* 803EDDA0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EDDA4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EDDA8  7C 08 03 A6 */	mtlr r0
/* 803EDDAC  38 21 00 10 */	addi r1, r1, 0x10
/* 803EDDB0  4E 80 00 20 */	blr 
