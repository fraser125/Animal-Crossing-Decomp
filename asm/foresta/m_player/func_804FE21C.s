lbl_804FE21C:
/* 804FE21C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804FE220  7C 08 02 A6 */	mflr r0
/* 804FE224  90 01 00 14 */	stw r0, 0x14(r1)
/* 804FE228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804FE22C  7C 9F 23 78 */	mr r31, r4
/* 804FE230  7F E5 FB 78 */	mr r5, r31
/* 804FE234  38 80 00 4F */	li r4, 0x4f
/* 804FE238  93 C1 00 08 */	stw r30, 8(r1)
/* 804FE23C  7C 7E 1B 78 */	mr r30, r3
/* 804FE240  4B FD C2 19 */	bl Player_actor_check_request_main_able
/* 804FE244  2C 03 00 00 */	cmpwi r3, 0
/* 804FE248  41 82 00 1C */	beq lbl_804FE264
/* 804FE24C  7F C3 F3 78 */	mr r3, r30
/* 804FE250  7F E5 FB 78 */	mr r5, r31
/* 804FE254  38 80 00 4F */	li r4, 0x4f
/* 804FE258  4B FD 6D BD */	bl Player_actor_request_main_index
/* 804FE25C  38 60 00 01 */	li r3, 1
/* 804FE260  48 00 00 08 */	b lbl_804FE268
lbl_804FE264:
/* 804FE264  38 60 00 00 */	li r3, 0
lbl_804FE268:
/* 804FE268  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804FE26C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804FE270  83 C1 00 08 */	lwz r30, 8(r1)
/* 804FE274  7C 08 03 A6 */	mtlr r0
/* 804FE278  38 21 00 10 */	addi r1, r1, 0x10
/* 804FE27C  4E 80 00 20 */	blr 
