lbl_804F3D84:
/* 804F3D84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F3D88  7C 08 02 A6 */	mflr r0
/* 804F3D8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F3D90  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F3D94  7C 9F 23 78 */	mr r31, r4
/* 804F3D98  7F E5 FB 78 */	mr r5, r31
/* 804F3D9C  38 80 00 2E */	li r4, 0x2e
/* 804F3DA0  93 C1 00 08 */	stw r30, 8(r1)
/* 804F3DA4  7C 7E 1B 78 */	mr r30, r3
/* 804F3DA8  4B FE 66 B1 */	bl Player_actor_check_request_main_able
/* 804F3DAC  2C 03 00 00 */	cmpwi r3, 0
/* 804F3DB0  41 82 00 1C */	beq lbl_804F3DCC
/* 804F3DB4  7F C3 F3 78 */	mr r3, r30
/* 804F3DB8  7F E5 FB 78 */	mr r5, r31
/* 804F3DBC  38 80 00 2E */	li r4, 0x2e
/* 804F3DC0  4B FE 12 55 */	bl Player_actor_request_main_index
/* 804F3DC4  38 60 00 01 */	li r3, 1
/* 804F3DC8  48 00 00 08 */	b lbl_804F3DD0
lbl_804F3DCC:
/* 804F3DCC  38 60 00 00 */	li r3, 0
lbl_804F3DD0:
/* 804F3DD0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F3DD4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F3DD8  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F3DDC  7C 08 03 A6 */	mtlr r0
/* 804F3DE0  38 21 00 10 */	addi r1, r1, 0x10
/* 804F3DE4  4E 80 00 20 */	blr 
