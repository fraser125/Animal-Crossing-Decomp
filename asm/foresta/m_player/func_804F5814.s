lbl_804F5814:
/* 804F5814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804F5818  7C 08 02 A6 */	mflr r0
/* 804F581C  90 01 00 14 */	stw r0, 0x14(r1)
/* 804F5820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804F5824  7C 9F 23 78 */	mr r31, r4
/* 804F5828  7F E5 FB 78 */	mr r5, r31
/* 804F582C  38 80 00 34 */	li r4, 0x34
/* 804F5830  93 C1 00 08 */	stw r30, 8(r1)
/* 804F5834  7C 7E 1B 78 */	mr r30, r3
/* 804F5838  4B FE 4C 21 */	bl Player_actor_check_request_main_able
/* 804F583C  2C 03 00 00 */	cmpwi r3, 0
/* 804F5840  41 82 00 1C */	beq lbl_804F585C
/* 804F5844  7F C3 F3 78 */	mr r3, r30
/* 804F5848  7F E5 FB 78 */	mr r5, r31
/* 804F584C  38 80 00 34 */	li r4, 0x34
/* 804F5850  4B FD F7 C5 */	bl Player_actor_request_main_index
/* 804F5854  38 60 00 01 */	li r3, 1
/* 804F5858  48 00 00 08 */	b lbl_804F5860
lbl_804F585C:
/* 804F585C  38 60 00 00 */	li r3, 0
lbl_804F5860:
/* 804F5860  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804F5864  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804F5868  83 C1 00 08 */	lwz r30, 8(r1)
/* 804F586C  7C 08 03 A6 */	mtlr r0
/* 804F5870  38 21 00 10 */	addi r1, r1, 0x10
/* 804F5874  4E 80 00 20 */	blr 
