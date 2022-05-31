lbl_804EB660:
/* 804EB660  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804EB664  7C 08 02 A6 */	mflr r0
/* 804EB668  90 01 00 14 */	stw r0, 0x14(r1)
/* 804EB66C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804EB670  7C 9F 23 78 */	mr r31, r4
/* 804EB674  7F E5 FB 78 */	mr r5, r31
/* 804EB678  38 80 00 18 */	li r4, 0x18
/* 804EB67C  93 C1 00 08 */	stw r30, 8(r1)
/* 804EB680  7C 7E 1B 78 */	mr r30, r3
/* 804EB684  4B FE ED D5 */	bl Player_actor_check_request_main_able
/* 804EB688  2C 03 00 00 */	cmpwi r3, 0
/* 804EB68C  41 82 00 58 */	beq lbl_804EB6E4
/* 804EB690  7F C3 F3 78 */	mr r3, r30
/* 804EB694  4B EE DF AD */	bl get_player_actor_withoutCheck
/* 804EB698  80 03 0D B4 */	lwz r0, 0xdb4(r3)
/* 804EB69C  2C 00 00 2C */	cmpwi r0, 0x2c
/* 804EB6A0  41 82 00 1C */	beq lbl_804EB6BC
/* 804EB6A4  40 80 00 20 */	bge lbl_804EB6C4
/* 804EB6A8  2C 00 00 2B */	cmpwi r0, 0x2b
/* 804EB6AC  40 80 00 08 */	bge lbl_804EB6B4
/* 804EB6B0  48 00 00 14 */	b lbl_804EB6C4
lbl_804EB6B4:
/* 804EB6B4  38 00 00 36 */	li r0, 0x36
/* 804EB6B8  48 00 00 10 */	b lbl_804EB6C8
lbl_804EB6BC:
/* 804EB6BC  38 00 00 37 */	li r0, 0x37
/* 804EB6C0  48 00 00 08 */	b lbl_804EB6C8
lbl_804EB6C4:
/* 804EB6C4  38 00 00 38 */	li r0, 0x38
lbl_804EB6C8:
/* 804EB6C8  90 03 0D 60 */	stw r0, 0xd60(r3)
/* 804EB6CC  7F C3 F3 78 */	mr r3, r30
/* 804EB6D0  7F E5 FB 78 */	mr r5, r31
/* 804EB6D4  38 80 00 18 */	li r4, 0x18
/* 804EB6D8  4B FE 99 3D */	bl Player_actor_request_main_index
/* 804EB6DC  38 60 00 01 */	li r3, 1
/* 804EB6E0  48 00 00 08 */	b lbl_804EB6E8
lbl_804EB6E4:
/* 804EB6E4  38 60 00 00 */	li r3, 0
lbl_804EB6E8:
/* 804EB6E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804EB6EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804EB6F0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804EB6F4  7C 08 03 A6 */	mtlr r0
/* 804EB6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 804EB6FC  4E 80 00 20 */	blr 
