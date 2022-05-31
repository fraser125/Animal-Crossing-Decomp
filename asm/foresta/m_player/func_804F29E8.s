lbl_804F29E8:
/* 804F29E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F29EC  7C 08 02 A6 */	mflr r0
/* 804F29F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F29F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F29F8  7C 9F 23 78 */	mr r31, r4
/* 804F29FC  7F E5 FB 78 */	mr r5, r31
/* 804F2A00  38 80 00 2C */	li r4, 0x2c
/* 804F2A04  93 C1 00 08 */	stw r30, 8(r1)
/* 804F2A08  7C 7E 1B 78 */	mr r30, r3
/* 804F2A0C  4B FE 7A 4D */	bl Player_actor_check_request_main_able
/* 804F2A10  2C 03 00 00 */	cmpwi r3, 0
/* 804F2A14  41 82 00 50 */	beq lbl_804F2A64
/* 804F2A18  7F C3 F3 78 */	mr r3, r30
/* 804F2A1C  4B EE 6C 25 */	bl get_player_actor_withoutCheck
/* 804F2A20  80 83 0C F8 */	lwz r4, 0xcf8(r3)
/* 804F2A24  4B FE DF 81 */	bl Player_actor_Get_ItemKind
/* 804F2A28  7C 60 07 74 */	extsb r0, r3
/* 804F2A2C  38 60 00 00 */	li r3, 0
/* 804F2A30  2C 00 00 09 */	cmpwi r0, 9
/* 804F2A34  41 80 00 10 */	blt lbl_804F2A44
/* 804F2A38  2C 00 00 0B */	cmpwi r0, 0xb
/* 804F2A3C  40 80 00 08 */	bge lbl_804F2A44
/* 804F2A40  38 60 00 01 */	li r3, 1
lbl_804F2A44:
/* 804F2A44  2C 03 00 00 */	cmpwi r3, 0
/* 804F2A48  41 82 00 1C */	beq lbl_804F2A64
/* 804F2A4C  7F C3 F3 78 */	mr r3, r30
/* 804F2A50  7F E5 FB 78 */	mr r5, r31
/* 804F2A54  38 80 00 2C */	li r4, 0x2c
/* 804F2A58  4B FE 25 BD */	bl Player_actor_request_main_index
/* 804F2A5C  38 60 00 01 */	li r3, 1
/* 804F2A60  48 00 00 08 */	b lbl_804F2A68
lbl_804F2A64:
/* 804F2A64  38 60 00 00 */	li r3, 0
lbl_804F2A68:
/* 804F2A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F2A6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F2A70  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F2A74  7C 08 03 A6 */	mtlr r0
/* 804F2A78  38 21 00 10 */	addi r1, r1, 0x10
/* 804F2A7C  4E 80 00 20 */	blr 
