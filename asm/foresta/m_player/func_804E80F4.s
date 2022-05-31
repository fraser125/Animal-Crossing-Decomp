lbl_804E80F4:
/* 804E80F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E80F8  7C 08 02 A6 */	mflr r0
/* 804E80FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8100  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804E8104  7C 9F 23 78 */	mr r31, r4
/* 804E8108  7F E5 FB 78 */	mr r5, r31
/* 804E810C  38 80 00 0C */	li r4, 0xc
/* 804E8110  93 C1 00 08 */	stw r30, 8(r1)
/* 804E8114  7C 7E 1B 78 */	mr r30, r3
/* 804E8118  4B FF 23 41 */	bl Player_actor_check_request_main_able
/* 804E811C  2C 03 00 00 */	cmpwi r3, 0
/* 804E8120  41 82 00 1C */	beq lbl_804E813C
/* 804E8124  7F C3 F3 78 */	mr r3, r30
/* 804E8128  7F E5 FB 78 */	mr r5, r31
/* 804E812C  38 80 00 0C */	li r4, 0xc
/* 804E8130  4B FE CE E5 */	bl Player_actor_request_main_index
/* 804E8134  38 60 00 01 */	li r3, 1
/* 804E8138  48 00 00 08 */	b lbl_804E8140
lbl_804E813C:
/* 804E813C  38 60 00 00 */	li r3, 0
lbl_804E8140:
/* 804E8140  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E8144  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804E8148  83 C1 00 08 */	lwz r30, 8(r1)
/* 804E814C  7C 08 03 A6 */	mtlr r0
/* 804E8150  38 21 00 10 */	addi r1, r1, 0x10
/* 804E8154  4E 80 00 20 */	blr 
