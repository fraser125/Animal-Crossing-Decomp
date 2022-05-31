lbl_804F545C:
/* 804F545C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5460  7C 08 02 A6 */	mflr r0
/* 804F5464  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F546C  7C 9F 23 78 */	mr r31, r4
/* 804F5470  7F E5 FB 78 */	mr r5, r31
/* 804F5474  38 80 00 33 */	li r4, 0x33
/* 804F5478  93 C1 00 08 */	stw r30, 8(r1)
/* 804F547C  7C 7E 1B 78 */	mr r30, r3
/* 804F5480  4B FE 4F D9 */	bl Player_actor_check_request_main_able
/* 804F5484  2C 03 00 00 */	cmpwi r3, 0
/* 804F5488  41 82 00 1C */	beq lbl_804F54A4
/* 804F548C  7F C3 F3 78 */	mr r3, r30
/* 804F5490  7F E5 FB 78 */	mr r5, r31
/* 804F5494  38 80 00 33 */	li r4, 0x33
/* 804F5498  4B FD FB 7D */	bl Player_actor_request_main_index
/* 804F549C  38 60 00 01 */	li r3, 1
/* 804F54A0  48 00 00 08 */	b lbl_804F54A8
lbl_804F54A4:
/* 804F54A4  38 60 00 00 */	li r3, 0
lbl_804F54A8:
/* 804F54A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F54AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F54B0  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F54B4  7C 08 03 A6 */	mtlr r0
/* 804F54B8  38 21 00 10 */	addi r1, r1, 0x10
/* 804F54BC  4E 80 00 20 */	blr 
